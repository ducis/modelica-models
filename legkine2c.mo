model legkine2c
  inner Modelica.Mechanics.MultiBody.World world annotation(Placement(visible = true, transformation(origin = {-143.56,163.305}, extent = {{-10,-10},{10,10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.Fixed fixed4(r = {0,5,0}) annotation(Placement(visible = true, transformation(origin = {-167.625,-6.77322}, extent = {{-10,-10},{10,10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.Fixed fixed5(r = {0,-5,0}) annotation(Placement(visible = true, transformation(origin = {-168.494,-47.1397}, extent = {{-10,-10},{10,10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.Fixed fixed6(r = {20,0,0}) annotation(Placement(visible = true, transformation(origin = {-56.8445,-30.8861}, extent = {{-10,-10},{10,10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedtranslation13(r = {17,-3,0}) annotation(Placement(visible = true, transformation(origin = {42.7793,12.8797}, extent = {{10,-10},{-10,10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedtranslation14(r = {20,0,0}) annotation(Placement(visible = true, transformation(origin = {41.2409,-81.2742}, extent = {{10,-10},{-10,10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedtranslation15(r = {40,0,0}) annotation(Placement(visible = true, transformation(origin = {99.087,11.6489}, extent = {{10,-10},{-10,10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedtranslation16(r = {40,0,0}) annotation(Placement(visible = true, transformation(origin = {97.5486,-81.5819}, extent = {{10,-10},{-10,10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.PointMass pointmass1(m = 1) annotation(Placement(visible = true, transformation(origin = {212,-34.7692}, extent = {{-10,-10},{10,10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Joints.Assemblies.JointRRR jointrrr1(rRod1_ia = {20,0,0}, rRod2_ib = {-20,0,0}) annotation(Placement(visible = true, transformation(origin = {64.6808,-34.8936}, extent = {{-20,-20},{20,20}}, rotation = -90)));
  Modelica.Mechanics.MultiBody.Joints.Assemblies.JointRRR jointrrr2(rRod1_ia = {20,0,0}, rRod2_ib = {-20,0,0}) annotation(Placement(visible = true, transformation(origin = {126.868,-36.6833}, extent = {{-20,-20},{20,20}}, rotation = -90)));
  Modelica.Mechanics.MultiBody.Joints.Revolute revolute2 annotation(Placement(visible = true, transformation(origin = {-12.0792,-17.2277}, extent = {{-10,-10},{10,10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Joints.Revolute revolute1 annotation(Placement(visible = true, transformation(origin = {-15.0495,-54.6535}, extent = {{-10,-10},{10,10}}, rotation = 0)));
equation
  connect(revolute2.frame_b,fixedtranslation13.frame_b) annotation(Line(points = {{-2.07921,-17.2277},{33.2673,-17.2277},{33.2673,12.2772},{33.2673,12.2772}}));
  connect(revolute1.frame_a,fixed6.frame_b) annotation(Line(points = {{-25.0495,-54.6535},{-46.3366,-54.6535},{-46.3366,-31.6832},{-46.3366,-31.6832}}));
  connect(revolute2.frame_a,fixed6.frame_b) annotation(Line(points = {{-22.0792,-17.2277},{-46.3366,-17.2277},{-46.3366,-29.3069},{-46.3366,-29.3069}}));
  connect(revolute1.frame_b,fixedtranslation14.frame_b) annotation(Line(points = {{-5.0495,-54.6535},{30.8911,-54.6535},{30.8911,-81.2742},{31.2409,-81.2742}}));
  connect(jointrrr2.frame_im,pointmass1.frame_a) annotation(Line(points = {{146.868,-36.6833},{146.868,-35.1563},{211.749,-35.1563},{211.749,-35.1563}}));
  connect(fixedtranslation16.frame_a,jointrrr2.frame_b) annotation(Line(points = {{107.549,-81.5819},{126.833,-81.5819},{126.833,-56.5205},{126.833,-56.5205}}));
  connect(fixedtranslation15.frame_a,jointrrr2.frame_a) annotation(Line(points = {{109.087,11.6489},{128.185,11.6489},{128.185,-15.6851},{128.185,-15.6851}}));
  connect(jointrrr1.frame_ib,fixedtranslation16.frame_b) annotation(Line(points = {{84.6808,-51.3191},{84.6808,-81.9413},{86.2682,-81.9413},{86.2682,-81.9413}}));
  connect(jointrrr1.frame_ia,fixedtranslation15.frame_b) annotation(Line(points = {{84.6808,-19.3191},{84.6808,10.6383},{87.6596,10.6383},{87.6596,10.6383}}));
  connect(fixedtranslation14.frame_a,jointrrr1.frame_b) annotation(Line(points = {{51.2409,-81.2742},{63.8298,-81.2742},{63.8298,-56.5957},{63.8298,-56.5957}}));
  connect(fixedtranslation13.frame_a,jointrrr1.frame_a) annotation(Line(points = {{52.7793,12.8797},{65.9574,12.8797},{65.9574,-14.8936},{65.9574,-14.8936}}));
  annotation(Icon(coordinateSystem(extent = {{-200,-200},{200,200}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10,10})), Diagram(coordinateSystem(extent = {{-200,-200},{200,200}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2,2})), experiment(StartTime = 0.0, StopTime = 100.0, Tolerance = 0.0001));
end legkine2c;

