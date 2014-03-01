model MIT1995Fig8Controller
  Modelica.Blocks.Math.Add add1(k2 = -1) annotation(Placement(visible = true, transformation(origin = {-141.745,28.0374}, extent = {{-10,-10},{10,10}}, rotation = 0)));
  Modelica.Blocks.Math.Add add2 annotation(Placement(visible = true, transformation(origin = {-29.6443,43.8735}, extent = {{-10,-10},{10,10}}, rotation = 0)));
  Modelica.Blocks.Math.Add3 add31 annotation(Placement(visible = true, transformation(origin = {9.09091,67.1937}, extent = {{-10,-10},{10,10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput X_l annotation(Placement(visible = true, transformation(origin = {-124.611,111.526}, extent = {{-10,-10},{10,10}}, rotation = 0), iconTransformation(origin = {-68.5358,4.6729}, extent = {{-10,-10},{10,10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput F_l annotation(Placement(visible = true, transformation(origin = {-175.078,22.1184}, extent = {{-10,-10},{10,10}}, rotation = 0), iconTransformation(origin = {-62.6168,-23.053}, extent = {{-10,-10},{10,10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput F_m annotation(Placement(visible = true, transformation(origin = {50.7788,66.6667}, extent = {{-10,-10},{10,10}}, rotation = 0), iconTransformation(origin = {70.0935,59.8131}, extent = {{-10,-10},{10,10}}, rotation = 0)));
  Modelica.Blocks.Continuous.Der der2 annotation(Placement(visible = true, transformation(origin = {-58.4145,71.2578}, extent = {{-10,-10},{10,10}}, rotation = 0)));
  Modelica.Blocks.Continuous.Der der1 annotation(Placement(visible = true, transformation(origin = {-85.031,71.2135}, extent = {{-10,-10},{10,10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput F_d annotation(Placement(visible = true, transformation(origin = {-169.664,90.2585}, extent = {{-10,-10},{10,10}}, rotation = 0), iconTransformation(origin = {-166.83,71.8351}, extent = {{-10,-10},{10,10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain gain1(k = 0.003) annotation(Placement(visible = true, transformation(origin = {-115.855,71.2135}, extent = {{-10,-10},{10,10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain gain2(k = 0.02) annotation(Placement(visible = true, transformation(origin = {-89.9469,111.293}, extent = {{-10,-10},{10,10}}, rotation = 0)));
  Modelica.Blocks.Continuous.Der der3 annotation(Placement(visible = true, transformation(origin = {-60.5403,110.939}, extent = {{-10,-10},{10,10}}, rotation = 0)));
  Modelica.Blocks.Continuous.Der der4 annotation(Placement(visible = true, transformation(origin = {-31.4438,111.337}, extent = {{-10,-10},{10,10}}, rotation = 0)));
  Modelica.Blocks.Continuous.PID PID(k = 100, Ti = 1, Td = 1) annotation(Placement(visible = true, transformation(origin = {-92.691,27.6993}, extent = {{-10,-10},{10,10}}, rotation = 0)));
equation
  connect(PID.u,add1.y) annotation(Line(points = {{-104.691,27.6993},{-130.53,27.6993},{-130.53,28.0374},{-130.745,28.0374}}));
  connect(PID.y,add2.u2) annotation(Line(points = {{-81.691,27.6993},{-49.5385,27.6993},{-49.5385,37.8462},{-42.4615,37.8462},{-42.4615,37.8462}}));
  connect(der4.y,add31.u1) annotation(Line(points = {{-20.4438,111.337},{-15.2347,111.337},{-15.2347,74.4021},{-4.25155,74.4021},{-4.25155,74.4021}}));
  connect(der3.y,der4.u) annotation(Line(points = {{-49.5403,110.939},{-42.8698,110.939},{-42.8698,110.54},{-42.8698,110.54}}));
  connect(gain2.y,der3.u) annotation(Line(points = {{-78.9469,111.293},{-75.465,111.293},{-75.465,111.249},{-75.465,111.249}}));
  connect(X_l,gain2.u) annotation(Line(points = {{-124.611,111.526},{-102.746,111.526},{-102.746,110.54},{-102.746,110.54}}));
  connect(der2.y,add2.u1) annotation(Line(points = {{-47.4145,71.2578},{-40.3897,71.2578},{-40.3897,57.3959},{-52.0815,57.3959},{-52.0815,49.6014},{-40.3897,49.6014},{-40.3897,49.6014}}));
  connect(der1.y,der2.u) annotation(Line(points = {{-74.031,71.2135},{-69.7963,71.2135},{-69.7963,70.8592},{-69.7963,70.8592}}));
  connect(gain1.y,der1.u) annotation(Line(points = {{-104.855,71.2135},{-98.4942,71.2135},{-98.4942,71.5678},{-98.4942,71.5678}}));
  connect(F_d,gain1.u) annotation(Line(points = {{-169.664,90.2585},{-133.924,90.2585},{-133.924,71.5678},{-128.609,71.5678},{-128.609,71.5678}}));
  connect(F_d,add31.u2) annotation(Line(points = {{-169.664,90.2585},{-144.606,90.2585},{-128.308,90.4615},{-35.6923,90.4615},{-35.6923,67.0769},{-4.30769,67.0769},{-4.30769,67.0769}}));
  connect(F_d,add1.u1) annotation(Line(points = {{-169.664,90.2585},{-149.844,90.2585},{-149.844,47.352},{-161.682,47.352},{-161.682,33.6449},{-154.517,33.6449},{-154.517,33.6449}}));
  connect(add31.y,F_m) annotation(Line(points = {{20.0909,67.1937},{40.1869,67.1937},{40.1869,66.0436},{40.1869,66.0436}}));
  connect(add1.u2,F_l) annotation(Line(points = {{-153.745,22.0374},{-170.405,22.0374},{-170.405,19.9377},{-170.405,19.9377}}));
  connect(add2.y,add31.u3) annotation(Line(points = {{-18.6443,43.8735},{-7.90514,43.8735},{-7.90514,60.0791},{-4.74308,60.0791},{-4.74308,60.0791}}));
  annotation(Icon(coordinateSystem(extent = {{-200,-200},{200,200}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10,10})), Diagram(coordinateSystem(extent = {{-200,-200},{200,200}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5,5})));
end MIT1995Fig8Controller;

