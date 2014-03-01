model MIT1995Figure2
  Modelica.Mechanics.Translational.Components.Spring spring1(c = 100, s_rel0 = 0.2) annotation(Placement(visible = true, transformation(origin = {-2.01678,-9.08547}, extent = {{-10,-10},{10,10}}, rotation = 0)));
  Modelica.Mechanics.Translational.Sources.Force force1 annotation(Placement(visible = true, transformation(origin = {-61.2269,-9.27027}, extent = {{-10,-10},{10,10}}, rotation = 0)));
  Modelica.Mechanics.Translational.Components.Mass mass1(m = 0.3) annotation(Placement(visible = true, transformation(origin = {-32.8561,-9.35072}, extent = {{-10,-10},{10,10}}, rotation = 0)));
  Modelica.Mechanics.Translational.Interfaces.Flange_b flange_b annotation(Placement(visible = true, transformation(origin = {57.3463,-9.48586}, extent = {{-10,-10},{10,10}}, rotation = 0), iconTransformation(origin = {37.0811,-10.3482}, extent = {{-10,-10},{10,10}}, rotation = 0)));
  Modelica.Mechanics.Translational.Sensors.ForceSensor forcesensor1 annotation(Placement(visible = true, transformation(origin = {28.8888,-9.27027}, extent = {{-10,-10},{10,10}}, rotation = 0)));
  Modelica.Mechanics.Translational.Sensors.PositionSensor positionsensor1 annotation(Placement(visible = true, transformation(origin = {30.1823,19.1873}, extent = {{-10,-10},{10,10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput X_l annotation(Placement(visible = true, transformation(origin = {89.2692,17.8846}, extent = {{-24.2692,-24.2692},{24.2692,24.2692}}, rotation = 0), iconTransformation(origin = {61.6581,19.1873}, extent = {{-10,-10},{10,10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput F_l annotation(Placement(visible = true, transformation(origin = {55.7307,-52.8077}, extent = {{-24.8846,-24.8846},{24.8846,24.8846}}, rotation = 0), iconTransformation(origin = {19.4029,-53.2502}, extent = {{-10,-10},{10,10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput F_m annotation(Placement(visible = true, transformation(origin = {-124.507,-9.3172}, extent = {{-32.1087,-32.1087},{32.1087,32.1087}}, rotation = 0), iconTransformation(origin = {-95.9365,-9.05468}, extent = {{-10,-10},{10,10}}, rotation = 0)));
equation
  connect(F_m,force1.f) annotation(Line(points = {{-124.507,-9.3172},{-72.8686,-9.3172},{-72.8686,-8.40792},{-72.8686,-8.40792}}));
  connect(forcesensor1.f,F_l) annotation(Line(points = {{20.8888,-20.2703},{19.4029,-20.2703},{19.4029,-37.2967},{19.5011,-53.7308},{55.7307,-52.8077}}));
  connect(positionsensor1.s,X_l) annotation(Line(points = {{41.1823,19.0873},{57.1307,19.0873},{89.2692,17.6782},{89.2692,17.8846}}));
  connect(spring1.flange_b,positionsensor1.flange) annotation(Line(points = {{7.98322,-9.08547},{9.70145,-9.08547},{9.70145,19.8341},{22.9849,19.1873},{20.1823,19.1873}}));
  connect(forcesensor1.flange_b,flange_b) annotation(Line(points = {{38.8888,-9.27027},{55.1905,-9.27027},{55.1905,-8.40792},{55.1905,-8.40792}}));
  connect(forcesensor1.flange_a,spring1.flange_b) annotation(Line(points = {{18.8888,-9.27027},{7.76116,-9.27027},{7.76116,-9.05468},{7.76116,-9.05468}}));
  connect(force1.flange,mass1.flange_a) annotation(Line(points = {{-51.2269,-9.27027},{-43.7643,-9.27027},{-42.8561,-9.08547},{-42.8561,-9.35072}}));
  connect(mass1.flange_b,spring1.flange_a) annotation(Line(points = {{-22.8561,-9.35072},{-12.5961,-9.35072},{-12.2661,-9.08547},{-12.0168,-9.08547}}));
  annotation(Icon(coordinateSystem(extent = {{-200,-200},{200,200}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2,2})), Diagram(coordinateSystem(extent = {{-200,-200},{200,200}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2,2})));
end MIT1995Figure2;

