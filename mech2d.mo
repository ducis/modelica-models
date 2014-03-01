package mech2d

import SI = Modelica.SIunits;
import C = Modelica.Constants;
import M3D=ModelicaServices.Modelica3D;

model distC
	SI.Position r[2,2];
	SI.Distance d;
protected
	SI.Angle a = atan2(dr[2],dr[1]);
	outer SI.Position planeZ;
	outer Modelica.Mechanics.MultiBody.World world;
	SI.Position dr[2] = r[2]-r[1];
	Modelica.Mechanics.MultiBody.Visualizers.Advanced.Arrow shape(
		r = {r[1,1],r[1,2],planeZ},
		r_head = {d,0,0},
		R = Modelica.Mechanics.MultiBody.Frames.planarRotation({0,0,1},a,der(a)),
		diameter = 0.01
		); 
equation
	(r[1,1]-r[2,1])^2+(r[1,2]-r[2,2])^2=d^2;
end distC;

model dp3C
	SI.Position r[3,2];
	SI.Position dp;
protected
	SI.Position a[2,2];
equation
	a[1] = r[2]-r[1];
	a[2] = r[3]-r[1];
	a[1,1]*a[2,1]+a[1,2]*a[2,2]=dp;
end dp3C;

model local2
	SI.Position r[3,2];
	SI.Position l[2];
protected
	SI.Position a[2,2];
	SI.Position len;
equation
	a = {r[2]-r[1],r[3]-r[1]};
	len = Modelica.Math.Vectors.length(a[1]);
	len*l = {a[1],{-a[1,2],a[1,1]}}*a[2];
end local2;


model force3R
	SI.Force f[3,2];
	SI.Position r[3,2];
protected
	SI.Position a[2,2];
equation
	a={r[1]-r[3],r[2]-r[3]};
	f[1]+f[2]+f[3]={0,0};
	-f[1,2]*a[1,1]+f[1,1]*a[1,2] 
	-f[2,2]*a[2,1]+f[2,1]*a[2,2]=0;
end force3R;

function dot2
	input Real a[2];
	input Real b[2];
	output Real dp=a[1]*b[1]+a[2]*b[2];
end dot2;

//function cross2
//	input Real a[2],b[2];
//	output Real cp= -b[2]*a[1]+b[1]*a[2];
//end dot2;

//function lenSq
//	input Real a[2];
//	output Real lsq=a[1]*a[1]+a[2]*a[2];
//end lenSq;

//function sameDir
//	input Real a[2],b[2];
//	output Boolean x = (dot2(a,b)^2) == lenSq(a)*lenSq(b);
//end sameDir;

model legkineforce2
	legkine2 k;
	SI.Force f[11,2], f3b[2];
	force3R 
		f347(f={f[4],-f[7],f[3]},r={k.j[4],k.j[7],k.j[3]}),
		f356(f={f[5],-f[6],f3b},r={k.j[5],k.j[6],k.j[3]}),
		f78A(f={f[7],f[8],f[10]},r={k.j[7],k.j[8],k.j[10]}),
		f689(f={f[6],-f[8],f[9]},r={k.j[6],k.j[8],k.j[9]});
	
	Real u[4];

equation
	
	f[9]=u[1]*(k.j[9]-k.j[11]);
	f[10]=u[2]*(k.j[10]-k.j[11]);
	f[4]=u[3]*(k.j[4]-k.j[1]);
	f[5]=u[4]*(k.j[5]-k.j[2]);

	f[1]=f[4];
	f[2]=f[5];
	f[11] = f[9]+f[10];

end legkineforce2;


model legkine2
//	inner Modelica.Mechanics.MultiBody.World world;
//	inner M3D.Controller m3d_control;  
	inner parameter SI.Position planeZ = -0.1;
	SI.Position j[11,2];
	SI.Position j3d[11,3];
	distC[8] ls(each d=0.2, r={ 
		{j[7],j[3]},
		{j[6],j[3]},
		{j[7],j[8]},
		{j[6],j[8]},
		{j[9],j[8]},
		{j[10],j[8]},
		{j[9],j[11]},
		{j[10],j[11]}});
	distC
		p0(r={j[1],j[4]},d=0.25),
		p1(r={j[2],j[5]},d=0.25);
	local2 
		c0(r={j[3],j[7],j[4]},l={-0.03,0.03}),
		c1(r={j[3],j[6],j[5]},l={0.03,0.03});
	dp3C d0(r={j[7],j[8],j[10]},dp=0.2*0.4);
	dp3C d1(r={j[6],j[8],j[9]},dp=0.2*0.4);
	//SI.Position lim[4](each max=0);
	SI.Position[2] 
		i0(start={0.25,-0.4}) = j[11],
		i1(start={0.3,-0.3})=j[9],
		i2(start={0.2,-0.3})=j[10],
		i3(start={0.3,-0.1})=j[7],
		i4(start={0.2,-0.1})=j[6],
		i5(start={0.25,-0.2})=j[8];
protected
	Modelica.Mechanics.MultiBody.Visualizers.Advanced.Shape[11] spheres(
  		each shapeType = "sphere", 
		color = {
			{0,0,0},
			{0,0,255},
			{0,255,0},
			{0,255,255},
			{255,0,0},
			{255,0,255},
			{255,255,0},
			{255,255,255},
			{0,0,128},
			{0,128,0},
			{128,0,0}
			}, 
		each length = 0.03,
		each width = 0.03,
		each height = 0.03,
		each lengthDirection = {1,0,0}, 
		each widthDirection = {0,1,0}, 
		r = j3d,
		each r_shape = -({1,0,0} * 0.03) / 2, 
		each R = Modelica.Mechanics.MultiBody.Frames.nullRotation());
equation
	j[1] = {0,0.05};
	j[2] = {0,-0.05};
	j[3] = {0.25,0};
	j3d[1:11,3]={planeZ for _ in 1:11};
	j3d[1:11,1:2] = j;
end legkine2;

model lkTest0
	inner M3D.Controller m3d_control;  
	inner Modelica.Mechanics.MultiBody.World world;
	legkine2 driver(planeZ= -0.1,p0.d=p[1],p1.d=p[2]);
	SI.Position[2] p;
equation
	driver.j[11] = {0.25+0.2*sin(time),-0.5+0.2*cos(time)};
end lkTest0;

//function dot2
//	input Real a[2];
//	input Real b[2];
//	output Real dp=a[1]*b[1]+a[2]*b[2];
//end dot2;

model lkTest1
	inner M3D.Controller m3d_control;  
	inner Modelica.Mechanics.MultiBody.World world;
	legkineforce2 driver(k.planeZ= -0.1,k.p0.d=p[1],k.p1.d=p[2]);
	SI.Position[2] p;
	SI.Power[2] power;
equation
	power = {dot2(driver.f[11],der(driver.k.j[11])), dot2(driver.f[4],der(driver.k.j[4])) + dot2(driver.f[5],der(driver.k.j[5]))};
	driver.f[11] = {1,1};
	driver.k.j[11] = {0.25+0.2*sin(time),-0.5+0.2*cos(time)};
end lkTest1;

model positionMirroring
	inner M3D.Controller m3d_control;
	inner Modelica.Mechanics.MultiBody.World world;
	legkine2 driver(planeZ = -0.2, p0.d=p[1], p1.d=p[2]);
	SI.Position[2] p;
	legkineforce2 driven(k.planeZ = 0.2, k.p0.d=p[1], k.p1.d=p[2]);
equation
	
end positionMirroring;

end mech2d;
