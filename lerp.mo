block Lerp
  extends Modelica.Blocks.Icons.Block;
  Modelica.Blocks.Interfaces.RealInput u1 "Connector 1 of Real input signals" annotation(Placement(transformation(extent = {{-140,60},{-100,100}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput u2 "Connector 2 of Real input signals" annotation(Placement(transformation(extent = {{-140,-20},{-100,20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput s "s" annotation(Placement(transformation(extent = {{-140,-100},{-100,-60}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput y "Connector of Real output signals" annotation(Placement(transformation(extent = {{100,-10},{120,10}}, rotation = 0)));
equation
  y = u1 * (1 - s) + u2 * s;
  annotation(Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100,-100},{100,100}}, grid = {2,2}), graphics = {Text(extent = {{-100,50},{5,90}}, lineColor = {0,0,0}, textString = "u1"),Text(extent = {{-100,-20},{5,20}}, lineColor = {0,0,0}, textString = "u2"),Text(extent = {{-100,-50},{5,-90}}, lineColor = {0,0,0}, textString = "s"),Text(extent = {{2,36},{100,-44}}, lineColor = {0,0,0}, textString = "lerp")}), Diagram(coordinateSystem(preserveAspectRatio = true, extent = {{-100,-100},{100,100}}, grid = {2,2}), graphics = {Rectangle(extent = {{-100,-100},{100,100}}, lineColor = {0,0,255}, fillColor = {255,255,255}, fillPattern = FillPattern.Solid),Text(extent = {{-100,50},{5,90}}, lineColor = {0,0,0}, textString = "u1"),Text(extent = {{-100,-20},{5,20}}, lineColor = {0,0,0}, textString = "u2"),Text(extent = {{-100,-50},{5,-90}}, lineColor = {0,0,0}, textString = "s"),Text(extent = {{2,46},{100,-34}}, lineColor = {0,0,0}, textString = "lerp")}));
end Lerp;

