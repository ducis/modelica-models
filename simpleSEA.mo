model simpleSEA
  Modelica.Mechanics.Rotational.Components.Gearbox gearbox1(ratio = 100, c = 0.1) annotation(Placement(visible = true, transformation(origin = {-36.4151,7.8329}, extent = {{-14.52,-14.52},{14.52,14.52}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Sources.Position position1 annotation(Placement(visible = true, transformation(origin = {-73.6292,7.8329}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Sensors.AngleSensor anglesensor1 annotation(Placement(visible = true, transformation(origin = {0.522193,7.8329}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Sources.Position position2 annotation(Placement(visible = true, transformation(origin = {82.2454,7.3107}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Sources.Position position3 annotation(Placement(visible = true, transformation(origin = {47.7807,-69.4517}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  Modelica.Blocks.Sources.Step step2 annotation(Placement(visible = true, transformation(origin = {-0.522193,-69.7128}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  Modelica.Blocks.Continuous.PID PID annotation(Placement(visible = true, transformation(origin = {-22.6624,75.2072}, extent = {{12,12},{-12,-12}}, rotation = -180)));
  Modelica.Mechanics.Rotational.Components.Spring spring1 annotation(Placement(visible = true, transformation(origin = {17.6861,-34.7379}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Components.Inertia inertia1 annotation(Placement(visible = true, transformation(origin = {67.6206,-34.995}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  Modelica.Blocks.Math.Feedback feedback1 annotation(Placement(visible = true, transformation(origin = {14.3959,75.0643}, extent = {{12,12},{-12,-12}}, rotation = -180)));
  Modelica.Mechanics.Rotational.Sensors.RelAngleSensor relanglesensor1 annotation(Placement(visible = true, transformation(origin = {47.5578,58.0977}, extent = {{12,12},{-12,-12}}, rotation = -180)));
  Modelica.Blocks.Sources.Constant const annotation(Placement(visible = true, transformation(origin = {77.3779,84.3188}, extent = {{12,12},{-12,-12}}, rotation = -180)));
  Modelica.Blocks.Continuous.SecondOrder secondorder1 annotation(Placement(visible = true, transformation(origin = {50.3474,7.3107}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  Modelica.Blocks.Continuous.SecondOrder secondorder2 annotation(Placement(visible = true, transformation(origin = {-64.2674,75.5784}, extent = {{12,12},{-12,-12}}, rotation = -180)));
equation
  connect(secondorder2.y,position1.phi_ref) annotation(Line(points = {{-77.4674,75.5784},{-97.6864,75.5784},{-97.6864,8.22622},{-88.0292,8.22622},{-88.0292,7.8329}}));
  connect(secondorder2.u,PID.y) annotation(Line(points = {{-49.8674,75.5784},{-35.9897,75.5784},{-35.9897,75.2072},{-35.8624,75.2072}}));
  connect(anglesensor1.phi,secondorder1.u) annotation(Line(points = {{13.7222,7.8329},{23.7598,7.8329},{23.7598,7.8329},{28.1984,7.8329},{28.1984,7.8329},{35.9474,7.8329},{35.9474,7.3107}}));
  connect(secondorder1.y,position2.phi_ref) annotation(Line(points = {{63.5474,7.3107},{67.1018,7.3107},{67.1018,7.3107},{67.8454,7.3107}}));
  connect(spring1.flange_a,relanglesensor1.flange_b) annotation(Line(points = {{5.68608,-34.7379},{-2.05656,-34.7379},{-2.05656,-4.37018},{19.0231,-4.37018},{19.0231,28.0206},{-5.9126,28.0206},{-5.9126,44.473},{35.5578,44.473},{35.5578,58.0977}}));
  connect(const.y,feedback1.u2) annotation(Line(points = {{64.1779,84.3188},{29.3059,84.3188},{29.3059,91.5167},{14.3959,91.5167},{14.3959,84.6643},{14.3959,84.6643}}));
  connect(feedback1.y,PID.u) annotation(Line(points = {{3.59589,75.0643},{-6.94087,75.0643},{-6.94087,75.2072},{-8.26238,75.2072}}));
  connect(relanglesensor1.phi_rel,feedback1.u1) annotation(Line(points = {{47.5578,71.2977},{47.5578,75.5784},{23.9959,75.5784},{23.9959,75.0643}}));
  connect(spring1.flange_b,relanglesensor1.flange_a) annotation(Line(points = {{29.6861,-34.7379},{29.563,-34.7379},{29.563,29.563},{46.2725,29.563},{46.2725,44.7301},{59.5578,44.7301},{59.5578,58.0977}}));
  connect(spring1.flange_b,inertia1.flange_a) annotation(Line(points = {{29.6861,-34.7379},{37.5321,-34.7379},{37.5321,-34.995},{55.6206,-34.995}}));
  connect(position3.flange,inertia1.flange_b) annotation(Line(points = {{59.7807,-69.4517},{90.2864,-69.4517},{90.2864,-34.995},{79.6206,-34.995}}));
  connect(position2.flange,spring1.flange_a) annotation(Line(points = {{94.2454,7.3107},{102.35,7.3107},{102.35,-18.799},{-17.4935,-18.799},{-17.4935,-34.7258},{5.68608,-34.7258},{5.68608,-34.7379}}));
  connect(position2.support,gearbox1.support) annotation(Line(points = {{82.2454,-4.6893},{82.2454,-4.6893},{82.2454,-13.5931},{-36.0313,-13.5931},{-36.0313,-6.6871},{-36.4151,-6.6871}}));
  connect(position3.support,position2.support) annotation(Line(points = {{47.7807,-81.4517},{94.3357,-81.4517},{94.3357,-4.6893},{82.2454,-4.6893}}));
  connect(step2.y,position3.phi_ref) annotation(Line(points = {{12.6778,-69.7128},{31.8538,-69.7128},{31.8538,-69.4517},{33.3807,-69.4517}}));
  connect(gearbox1.flange_b,anglesensor1.flange) annotation(Line(points = {{-21.8951,7.8329},{-11.2272,7.8329},{-11.2272,7.8329},{-11.4778,7.8329}}));
  connect(position1.support,gearbox1.support) annotation(Line(points = {{-73.6292,-4.1671},{-73.8903,-4.1671},{-73.8903,-14.6214},{-36.5535,-14.6214},{-36.5535,-6.6871},{-36.4151,-6.6871}}));
  connect(position1.flange,gearbox1.flange_a) annotation(Line(points = {{-61.6292,7.8329},{-51.1749,7.8329},{-51.1749,7.8329},{-50.9351,7.8329}}));
end simpleSEA;

