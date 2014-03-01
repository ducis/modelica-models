model legkine2b
  inner Modelica.Mechanics.MultiBody.World world annotation(Placement(visible = true, transformation(origin = {-143.56,163.305}, extent = {{-10,-10},{10,10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.Fixed fixed4(r = {0,5,0}) annotation(Placement(visible = true, transformation(origin = {-167.625,-6.77322}, extent = {{-10,-10},{10,10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.Fixed fixed5(r = {0,-5,0}) annotation(Placement(visible = true, transformation(origin = {-168.494,-47.1397}, extent = {{-10,-10},{10,10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.Fixed fixed6(r = {20,0,0}) annotation(Placement(visible = true, transformation(origin = {-56.8445,-30.8861}, extent = {{-10,-10},{10,10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedtranslation9(r = {10,0,0}) annotation(Placement(visible = true, transformation(origin = {-89.2207,-8.96648}, extent = {{10,-10},{-10,10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedtranslation10(r = {10,0,0}) annotation(Placement(visible = true, transformation(origin = {-91.6822,-48.0434}, extent = {{10,-10},{-10,10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedtranslation11(r = {10,0,0}) annotation(Placement(visible = true, transformation(origin = {-31.6822,14.1104}, extent = {{10,-10},{-10,10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedtranslation12(r = {10,0,0}) annotation(Placement(visible = true, transformation(origin = {-36.6053,-80.6588}, extent = {{10,-10},{-10,10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Joints.Revolute revolute5 annotation(Placement(visible = true, transformation(origin = {-29.233,-31.1123}, extent = {{-10,-10},{10,10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Joints.Assemblies.JointRRR jointrrr3(rRod1_ia = {3,-3,0}, rRod2_ib = {-3,-3,0}) annotation(Placement(visible = true, transformation(origin = {11.123,-30.7338}, extent = {{-20,20},{20,-20}}, rotation = -90)));
  Modelica.Mechanics.MultiBody.Joints.Revolute revolute1 annotation(Placement(visible = true, transformation(origin = {-128.494,-8.67843}, extent = {{-10,-10},{10,10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Joints.Revolute revolute2 annotation(Placement(visible = true, transformation(origin = {-128.777,-46.8216}, extent = {{-10,-10},{10,10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.PointMass pointmass1(m = 1) annotation(Placement(visible = true, transformation(origin = {92.0003,-71.9969}, extent = {{-10,-10},{10,10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Joints.Cylindrical cylindrical1 annotation(Placement(visible = true, transformation(origin = {-64.1584,19.4059}, extent = {{-10,-10},{10,10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Joints.Cylindrical cylindrical2 annotation(Placement(visible = true, transformation(origin = {-70.6931,-86.1386}, extent = {{-10,-10},{10,10}}, rotation = 0)));
equation
  connect(cylindrical1.frame_b,fixedtranslation11.frame_b) annotation(Line(points = {{-54.1584,19.4059},{-40.7921,19.4059},{-40.7921,13.4653},{-40.7921,13.4653}}));
  connect(fixedtranslation9.frame_a,cylindrical1.frame_a) annotation(Line(points = {{-79.2207,-8.96648},{-83.1683,-8.96648},{-83.1683,20.9901},{-72.8713,20.9901},{-72.8713,18.6139},{-72.8713,18.6139}}));
  connect(fixedtranslation10.frame_a,cylindrical2.frame_a) annotation(Line(points = {{-81.6822,-48.0434},{-77.6238,-48.0434},{-77.6238,-67.7228},{-91.0891,-67.7228},{-91.0891,-85.9406},{-81.5842,-85.9406},{-81.5842,-85.9406}}));
  connect(cylindrical2.frame_b,fixedtranslation12.frame_b) annotation(Line(points = {{-60.6931,-86.1386},{-47.9208,-86.1386},{-47.9208,-80.7921},{-47.9208,-80.7921}}));
  connect(jointrrr3.frame_ia,pointmass1.frame_a) annotation(Line(points = {{-8.877,-14.7338},{-8.877,-3.9604},{92.2772,-3.9604},{92.2772,-73.6634},{92.2772,-73.6634}}));
  connect(revolute1.frame_a,fixed4.frame_b) annotation(Line(points = {{-138.494,-8.67843},{-157.392,-8.67843},{-157.392,-6.21996},{-157.392,-6.21996}}));
  connect(revolute1.frame_b,fixedtranslation9.frame_b) annotation(Line(points = {{-118.494,-8.67843},{-100.601,-8.67843},{-100.601,-8.9243},{-100.601,-8.9243}}));
  connect(revolute2.frame_b,fixedtranslation10.frame_b) annotation(Line(points = {{-118.777,-46.8216},{-101.683,-46.8216},{-101.683,-48.678},{-101.683,-48.678}}));
  connect(fixed5.frame_b,revolute2.frame_a) annotation(Line(points = {{-158.494,-47.1397},{-139.003,-47.1397},{-139.003,-47.5962},{-139.003,-47.5962}}));
  connect(jointrrr3.frame_im,revolute5.frame_b) annotation(Line(points = {{-8.87699,-30.7338},{-8.87699,-31.6407},{-18.6599,-31.6407},{-18.6599,-31.6407}}));
  connect(fixedtranslation12.frame_a,jointrrr3.frame_b) annotation(Line(points = {{-26.6053,-80.6588},{6.21996,-80.6588},{11.123,-48.0295},{11.123,-50.7338}}));
  connect(fixedtranslation11.frame_a,jointrrr3.frame_a) annotation(Line(points = {{-21.6822,14.1104},{5.6791,14.1104},{11.123,-8.02946},{11.123,-10.7338}}));
  connect(fixed6.frame_b,revolute5.frame_a) annotation(Line(points = {{-46.8445,-30.8861},{-36.5085,-30.8861},{-39.233,-30.8419},{-39.233,-31.1123}}));
  annotation(Icon(coordinateSystem(extent = {{-200,-200},{200,200}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10,10})), Diagram(coordinateSystem(extent = {{-200,-200},{200,200}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2,2})), experiment(StartTime = 0.0, StopTime = 100.0, Tolerance = 0.0001));
end legkine2b;

