model MIT1995Fig2Test0
  MIT1995Figure2 mit1995figure21 annotation(Placement(visible = true, transformation(origin = {-68.6154,-27.3846}, extent = {{-10,-10},{10,10}}, rotation = 0)));
  Modelica.Blocks.Sources.Pulse pulse1(width = 10, period = 1, startTime = 3) annotation(Placement(visible = true, transformation(origin = {-142.173,-23.2733}, extent = {{-5,-5},{5,5}}, rotation = 0)));
equation
  connect(pulse1.y,mit1995figure21.u) annotation(Line(points = {{-136.673,-23.2733},{-75.7447,-23.2733},{-75.7447,-27.9591},{-74.8069,-27.9591}}));
  annotation(Icon(coordinateSystem(extent = {{-200,-200},{200,200}}, preserveAspectRatio = true, initialScale = 0.05, grid = {10,10})), Diagram(coordinateSystem(extent = {{-200,-200},{200,200}}, preserveAspectRatio = true, initialScale = 0.05, grid = {2,2})));
end MIT1995Fig2Test0;

