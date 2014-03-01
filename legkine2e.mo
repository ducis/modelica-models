model legkine2e
  inner Modelica.Mechanics.MultiBody.World world annotation(Placement(visible = true, transformation(origin = {-143.56,163.305}, extent = {{-10,-10},{10,10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.Fixed fixed6(r = {20,0,0}) annotation(Placement(visible = true, transformation(origin = {-56.8445,-30.8861}, extent = {{-10,-10},{10,10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Joints.Revolute revolute1 annotation(Placement(visible = true, transformation(origin = {-28.9231,-31.3846}, extent = {{-10,-10},{10,10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Joints.Assemblies.JointRRR jointrrr2(rRod1_ia = {20,0,0}, rRod2_ib = {-20,0,0}) annotation(Placement(visible = true, transformation(origin = {11.45,-32.7398}, extent = {{-20,20},{20,-20}}, rotation = -90)));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedtranslation1(r = {20,0,0}) annotation(Placement(visible = true, transformation(origin = {46.7692,-11.0769}, extent = {{-10,-10},{10,10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedtranslation2(r = {20,0,0}) annotation(Placement(visible = true, transformation(origin = {46.4867,-54.8219}, extent = {{-10,-10},{10,10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Joints.Revolute revolute2 annotation(Placement(visible = true, transformation(origin = {65.6875,-33.1159}, extent = {{-10,-10},{10,10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.PointMass pointmass1(m = 1) annotation(Placement(visible = true, transformation(origin = {151.21,-35.5291}, extent = {{-10,-10},{10,10}}, rotation = 0)));
equation
  connect(pointmass1.frame_a,revolute2.frame_b) annotation(Line(points = {{151.21,-35.5291},{75.6079,-35.5291},{75.6079,-33.4347},{75.6079,-33.4347}}));
  connect(fixedtranslation2.frame_b,revolute2.frame_b) annotation(Line(points = {{56.4867,-54.8219},{75.8179,-54.8219},{75.8179,-33.0798},{75.8179,-33.0798}}));
  connect(fixedtranslation1.frame_b,revolute2.frame_a) annotation(Line(points = {{56.7692,-11.0769},{55.5354,-11.0769},{55.5354,-33.5627},{55.5354,-33.5627}}));
  connect(jointrrr2.frame_b,fixedtranslation2.frame_a) annotation(Line(points = {{11.45,-52.7398},{11.45,-55.5354},{36.2187,-55.5354},{36.2187,-55.5354}}));
  connect(jointrrr2.frame_a,fixedtranslation1.frame_a) annotation(Line(points = {{11.45,-12.7398},{11.45,-11.8315},{36.2187,-11.8315},{36.2187,-11.8315}}));
  connect(jointrrr2.frame_im,revolute1.frame_b) annotation(Line(points = {{-8.54997,-32.7398},{-8.54997,-33.2308},{-18.9231,-33.2308},{-18.9231,-31.3846}}));
  connect(revolute1.frame_a,fixed6.frame_b) annotation(Line(points = {{-38.9231,-31.3846},{-46.7692,-31.3846},{-46.7692,-32.6154},{-46.7692,-32.6154}}));
  annotation(Icon(coordinateSystem(extent = {{-200,-200},{200,200}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10,10})), Diagram(coordinateSystem(extent = {{-200,-200},{200,200}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2,2})), experiment(StartTime = 0.0, StopTime = 100.0, Tolerance = 0.0001));
end legkine2e;

