model MIT1995Figure8
  MIT1995Figure2 mit1995figure21 annotation(Placement(visible = true, transformation(origin = {-1.66548,-12.3077}, extent = {{-20,-20},{20,20}}, rotation = 0)));
  MIT1995Fig8Controller mit1995fig8controller1 annotation(Placement(visible = true, transformation(origin = {-3.66605,19.3543}, extent = {{-20,-20},{20,20}}, rotation = 0)));
  Modelica.Blocks.Sources.Pulse pulse1(amplitude = 10, period = 10) annotation(Placement(visible = true, transformation(origin = {-53.8462,28.7692}, extent = {{-10,-10},{10,10}}, rotation = 0)));
  Modelica.Mechanics.Translational.Components.Fixed fixed1 annotation(Placement(visible = true, transformation(origin = {21.0769,-26.6154}, extent = {{-10,-10},{10,10}}, rotation = 0)));
equation
  connect(mit1995fig8controller1.F_d,pulse1.y) annotation(Line(points = {{-20.6325,28.3801},{-43.2241,28.3801},{-43.2241,28.698},{-43.2241,28.698}}));
  connect(mit1995figure21.flange_b,fixed1.flange) annotation(Line(points = {{4.06915,-13.2563},{20.9231,-13.2563},{20.9231,-25.8462},{20.9231,-25.8462}}));
  connect(mit1995figure21.X_l,mit1995fig8controller1.X_l) annotation(Line(points = {{4.50033,-10.389},{12.3077,-10.389},{12.3077,39.3846},{-25.2308,39.3846},{-25.2308,30.1538},{-16.6154,30.1538},{-16.6154,30.1538}}));
  connect(mit1995figure21.F_m,mit1995fig8controller1.F_m) annotation(Line(points = {{-11.2591,-13.2132},{-18.4615,-13.2132},{-18.4615,14.1538},{0.615385,14.1538},{0.615385,26},{0.615385,26}}));
  connect(mit1995figure21.F_l,mit1995fig8controller1.F_l) annotation(Line(points = {{1.52522,-16.0805},{-26.6154,-16.0805},{-26.6154,21.6923},{-20.9231,21.6923},{-20.9231,21.6923}}));
  annotation(Icon(coordinateSystem(extent = {{-100,-100},{100,100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2,2})), Diagram(coordinateSystem(extent = {{-100,-100},{100,100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2,2})));
end MIT1995Figure8;

