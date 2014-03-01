model realSEA_pc
  Modelica.Mechanics.Translational.Sensors.PositionSensor positionsensor1a annotation(Placement(visible = true, transformation(origin = {145.019,-141.526}, extent = {{-10,-10},{10,10}}, rotation = 0)));
  Modelica.Blocks.Math.Feedback feedback3a annotation(Placement(visible = true, transformation(origin = {-163.009,-140.883}, extent = {{-10,-10},{10,10}}, rotation = 0)));
  Modelica.Blocks.Continuous.PID pid2a(Ti = 0.5, Td = 0.05, k = 65) annotation(Placement(visible = true, transformation(origin = {-137.66,-158.141}, extent = {{-10,-10},{10,10}}, rotation = 0)));
  Modelica.Blocks.Continuous.Integrator integrator1a(k = 100) annotation(Placement(visible = true, transformation(origin = {-107.232,-98.023}, extent = {{-10,-10},{10,10}}, rotation = 0)));
  Modelica.Blocks.Sources.Pulse pulse2a(period = 10, startTime = 5, amplitude = 0.1) annotation(Placement(visible = true, transformation(origin = {-163.78,-100.243}, extent = {{-10,-10},{10,10}}, rotation = 0)));
equation
  connect(pulse2a.y,feedback3a.u1) annotation(Line(points = {{-152.78,-100.243},{-142.343,-99.817},{-142.343,-123.522},{-178.959,-123.522},{-178.959,-140.753},{-170.651,-140.883},{-171.009,-140.883}}));
  connect(pid2a.y,integrator1a.u) annotation(Line(points = {{-126.66,-158.141},{-123.574,-158.141},{-123.574,-118.101},{-128.805,-118.101},{-119.232,-101.178},{-119.232,-98.023}}));
  connect(feedback3a.y,pid2a.u) annotation(Line(points = {{-154.009,-140.883},{-155.266,-140.883},{-149.66,-139.83},{-149.66,-158.141}}));
  connect(positionsensor1a.s,feedback3a.u2) annotation(Line(points = {{156.019,-141.626},{161.918,-141.626},{161.918,-184.642},{-163.62,-185.565},{-163.009,-148.563},{-163.009,-148.883}}));
  annotation(Icon(coordinateSystem(extent = {{-200,-200},{200,200}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10,10})), Diagram(coordinateSystem(extent = {{-200,-200},{200,200}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2,2})), experiment(StartTime = 0.0, StopTime = 20.0, Tolerance = 0.000001));
end realSEA_pc;

