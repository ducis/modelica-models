model legkine3
  inner Modelica.Mechanics.MultiBody.World world annotation(Placement(visible = true, transformation(origin = {-143.56,163.305}, extent = {{-10,-10},{10,10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.Fixed fixed4(r = {0,5,0}) annotation(Placement(visible = true, transformation(origin = {-167.625,-6.77322}, extent = {{-10,-10},{10,10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.Fixed fixed5(r = {0,-5,0}) annotation(Placement(visible = true, transformation(origin = {-168.494,-47.1397}, extent = {{-10,-10},{10,10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.Fixed fixed6(r = {20,0,0}) annotation(Placement(visible = true, transformation(origin = {-56.8445,-30.8861}, extent = {{-10,-10},{10,10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedtranslation9(r = {10,0,0}) annotation(Placement(visible = true, transformation(origin = {-89.2207,-8.96648}, extent = {{10,-10},{-10,10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedtranslation10(r = {10,0,0}) annotation(Placement(visible = true, transformation(origin = {-91.6822,-48.0434}, extent = {{10,-10},{-10,10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.PointMass pointmass1(m = 1) annotation(Placement(visible = true, transformation(origin = {212,-34.7692}, extent = {{-10,-10},{10,10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Joints.Assemblies.JointRRP jointrrp1 annotation(Placement(visible = true, transformation(origin = {-35.9711,-5.27078}, extent = {{-15,15},{15,-15}}, rotation = 90)));
  Modelica.Mechanics.MultiBody.Joints.Assemblies.JointRRP jointrrp2 annotation(Placement(visible = true, transformation(origin = {-35.0056,-72.2856}, extent = {{15,15},{-15,-15}}, rotation = 90)));
  Modelica.Mechanics.MultiBody.Parts.PointMass pointmass2 annotation(Placement(visible = true, transformation(origin = {25.5926,-57.9033}, extent = {{-10,-10},{10,10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.PointMass pointmass3 annotation(Placement(visible = true, transformation(origin = {27.1979,-16.7894}, extent = {{-10,-10},{10,10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Joints.Revolute revolute1 annotation(Placement(visible = true, transformation(origin = {-132.762,-50.5454}, extent = {{-10,-10},{10,10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Joints.Revolute revolute2 annotation(Placement(visible = true, transformation(origin = {-128.917,-7.672}, extent = {{-10,-10},{10,10}}, rotation = 0)));
equation
  connect(revolute1.frame_b,fixedtranslation10.frame_b) annotation(Line(points = {{-122.762,-50.5454},{-101.571,-50.5454},{-101.571,-48.466},{-101.571,-48.466}}));
  connect(fixed5.frame_b,revolute1.frame_a) annotation(Line(points = {{-158.494,-47.1397},{-142.679,-47.1397},{-142.679,-51.0252},{-142.679,-51.0252}}));
  connect(revolute2.frame_a,fixed4.frame_b) annotation(Line(points = {{-138.917,-7.672},{-157.394,-7.672},{-157.394,-7.19792},{-157.394,-7.19792}}));
  connect(revolute2.frame_b,fixedtranslation9.frame_b) annotation(Line(points = {{-118.917,-7.672},{-99.4912,-7.672},{-99.4912,-9.27732},{-99.4912,-9.27732}}));
  connect(pointmass3.frame_a,jointrrp1.frame_im) annotation(Line(points = {{27.1979,-16.7894},{-7.19792,-16.7894},{-7.19792,-6.2382},{-20.634,-6.2382},{-20.634,-6.2382}}));
  connect(pointmass2.frame_a,jointrrp2.frame_im) annotation(Line(points = {{25.5926,-57.9033},{-0.159954,-57.9033},{-0.159954,-72.779},{-19.6743,-72.779},{-19.6743,-72.779}}));
  connect(fixedtranslation10.frame_a,jointrrp2.frame_b) annotation(Line(points = {{-81.6822,-48.0434},{-73.0989,-48.0434},{-73.0989,-97.2519},{-35.0299,-97.2519},{-35.0299,-87.6547},{-35.0299,-87.6547}}));
  connect(jointrrp2.frame_a,fixed6.frame_b) annotation(Line(points = {{-35.0056,-57.2856},{-35.0056,-31.9908},{-47.0264,-31.9908},{-47.0264,-31.9908}}));
  connect(jointrrp1.frame_b,fixedtranslation9.frame_a) annotation(Line(points = {{-35.9711,9.72922},{-35.9711,15.5155},{-79.1771,15.5155},{-79.1771,-8.79746},{-79.1771,-8.79746}}));
  connect(jointrrp1.frame_a,fixed6.frame_b) annotation(Line(points = {{-35.9711,-20.2708},{-35.9711,-31.031},{-46.7065,-31.031},{-46.7065,-31.031}}));
  annotation(Icon(coordinateSystem(extent = {{-200,-200},{200,200}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10,10})), Diagram(coordinateSystem(extent = {{-200,-200},{200,200}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2,2})), experiment(StartTime = 0.0, StopTime = 100.0, Tolerance = 0.0001));
end legkine3;

