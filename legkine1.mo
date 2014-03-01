model legkine1
  Modelica.Mechanics.MultiBody.Parts.BodyCylinder lowerleg1(r = {20,0,0}) annotation(Placement(visible = true, transformation(origin = {164.185,142.925}, extent = {{-10,-10},{10,10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.BodyCylinder lowerleg0(r = {20,0,0}) annotation(Placement(visible = true, transformation(origin = {165.545,39.5484}, extent = {{-10,-10},{10,10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.Fixed fixed3(r = {0,-5,0}) annotation(Placement(visible = true, transformation(origin = {-162.956,73.4756}, extent = {{-10,-10},{10,10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.Fixed fixed1(r = {0,5,0}) annotation(Placement(visible = true, transformation(origin = {-163.317,114.458}, extent = {{-10,-10},{10,10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.BodyCylinder bodycylinder1(r = {10,0,0}) annotation(Placement(visible = true, transformation(origin = {-10.923,142.494}, extent = {{-10,-10},{10,10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.BodyCylinder bodycylinder2(r = {10,0,0}) annotation(Placement(visible = true, transformation(origin = {-13.662,40.8748}, extent = {{-10,-10},{10,10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.BodyCylinder upperleg1(r = {20,0,0}) annotation(Placement(visible = true, transformation(origin = {56.984,39.1693}, extent = {{-10,-10},{10,10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.BodyCylinder upperleg0(r = {20,0,0}) annotation(Placement(visible = true, transformation(origin = {59.723,142.856}, extent = {{-10,-10},{10,10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.BodyCylinder midleg1(r = {40,0,0}) annotation(Placement(visible = true, transformation(origin = {112.832,40.5819}, extent = {{-10,-10},{10,10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.BodyCylinder midleg0(r = {40,0,0}) annotation(Placement(visible = true, transformation(origin = {113.504,142.201}, extent = {{-10,-10},{10,10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Joints.Revolute revolute8 annotation(Placement(visible = true, transformation(origin = {86.4578,142.184}, extent = {{-10,-10},{10,10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Joints.Revolute revolute9 annotation(Placement(visible = true, transformation(origin = {138.844,142.201}, extent = {{-10,-10},{10,10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Joints.Revolute revolute10 annotation(Placement(visible = true, transformation(origin = {84.7524,40.2202}, extent = {{-10,-10},{10,10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Joints.Revolute revolute11 annotation(Placement(visible = true, transformation(origin = {139.205,39.2038}, extent = {{-10,-10},{10,10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedtranslation4(r = {10,0,0}) annotation(Placement(visible = true, transformation(origin = {107.821,66.457}, extent = {{-10,-10},{10,10}}, rotation = 0)));
  inner Modelica.Mechanics.MultiBody.World world annotation(Placement(visible = true, transformation(origin = {-143.56,163.305}, extent = {{-10,-10},{10,10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Joints.RevolutePlanarLoopConstraint revolute annotation(Placement(visible = true, transformation(origin = {-122.881,73.2246}, extent = {{-10,-10},{10,10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Joints.RevolutePlanarLoopConstraint revoluteplanarloopconstraint1 annotation(Placement(visible = true, transformation(origin = {-130.219,112.852}, extent = {{-10,-10},{10,10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Joints.Prismatic prismatic1(useAxisFlange = true) annotation(Placement(visible = true, transformation(origin = {-59.4436,140.167}, extent = {{-10,-10},{10,10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Joints.Prismatic prismatic2(useAxisFlange = true) annotation(Placement(visible = true, transformation(origin = {-48.5562,38.1987}, extent = {{-10,-10},{10,10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Joints.Revolute revolute3 annotation(Placement(visible = true, transformation(origin = {23.0651,142.579}, extent = {{-10,-10},{10,10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Joints.Revolute revolute4 annotation(Placement(visible = true, transformation(origin = {20.6342,39.91}, extent = {{-10,-10},{10,10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Joints.RevolutePlanarLoopConstraint revoluteplanarloopconstraint2 annotation(Placement(visible = true, transformation(origin = {111.988,92.1528}, extent = {{-10,-10},{10,10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Joints.RevolutePlanarLoopConstraint revoluteplanarloopconstraint3 annotation(Placement(visible = true, transformation(origin = {165.219,92.1528}, extent = {{-10,-10},{10,10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.BodyCylinder cyl_tube_upper(r = {10,0,0}, density = 7700) annotation(Placement(visible = true, transformation(origin = {-89.3458,105.883}, extent = {{-10,-10},{10,10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.BodyCylinder cyl_tube_lower(r = {10,0,0}) annotation(Placement(visible = true, transformation(origin = {-88.7304,79.1137}, extent = {{-10,-10},{10,10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedtranslation3(r = {10,0,0}) annotation(Placement(visible = true, transformation(origin = {107.078,116.052}, extent = {{-10,-10},{10,10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.Fixed fixed2(r = {20,0,0}) annotation(Placement(visible = true, transformation(origin = {-7.61372,90.3447}, extent = {{-10,-10},{10,10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedtranslation1(r = {3,-3,0}) annotation(Placement(visible = true, transformation(origin = {65.5486,111.341}, extent = {{10,-10},{-10,10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedtranslation2(r = {3,3,0}) annotation(Placement(visible = true, transformation(origin = {62.9731,70.5612}, extent = {{10,-10},{-10,10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Joints.Revolute revolute2 annotation(Placement(visible = true, transformation(origin = {28.0779,70.7648}, extent = {{-10,-10},{10,10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Joints.Revolute revolute1 annotation(Placement(visible = true, transformation(origin = {29.8079,111.399}, extent = {{-10,-10},{10,10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.PointMass pointmass2(m = 1) annotation(Placement(visible = true, transformation(origin = {218.769,89.8462}, extent = {{-10,-10},{10,10}}, rotation = 0)));
  Modelica.Mechanics.Translational.Components.Spring spring1(c = 10) annotation(Placement(visible = true, transformation(origin = {-57.1764,166.224}, extent = {{-10,-10},{10,10}}, rotation = 0)));
  Modelica.Mechanics.Translational.Components.Spring spring2(c = 10) annotation(Placement(visible = true, transformation(origin = {-48.276,65.9137}, extent = {{-10,-10},{10,10}}, rotation = 0)));
equation
  connect(prismatic2.axis,spring2.flange_b) annotation(Line(points = {{-40.5562,44.1987},{-32.452,44.1987},{-32.452,65.9857},{-38.1311,65.9857},{-38.1311,65.9857}}));
  connect(spring2.flange_a,prismatic2.support) annotation(Line(points = {{-58.276,65.9137},{-63.0109,65.9137},{-63.0109,44.351},{-51.6527,44.351},{-51.6527,44.351}}));
  connect(spring1.flange_b,prismatic1.axis) annotation(Line(points = {{-47.1764,166.224},{-43.2693,166.224},{-43.2693,145.764},{-50.571,145.764},{-50.571,145.764}}));
  connect(prismatic1.support,spring1.flange_a) annotation(Line(points = {{-63.4436,146.167},{-69.7718,146.167},{-69.7718,166.316},{-67.6083,166.316},{-67.6083,166.316}}));
  connect(revoluteplanarloopconstraint3.frame_b,pointmass2.frame_a) annotation(Line(points = {{175.219,92.1528},{218.154,92.1528},{218.154,89.5385},{218.154,89.5385}}));
  connect(upperleg0.frame_a,fixedtranslation1.frame_a) annotation(Line(points = {{49.723,142.856},{45.8462,142.856},{45.8462,121.846},{76.9231,121.846},{76.9231,110.462},{76.9231,110.462}}));
  connect(fixedtranslation2.frame_a,upperleg1.frame_a) annotation(Line(points = {{72.9731,70.5612},{79.3846,70.5612},{79.3846,55.6923},{46.4615,55.6923},{46.4615,38.1538},{46.4615,38.1538}}));
  connect(fixed2.frame_b,revolute1.frame_a) annotation(Line(points = {{2.38628,90.3447},{12.2894,90.3447},{12.2894,111.462},{18.8848,110.783},{19.8079,111.399}}));
  connect(revolute1.frame_b,fixedtranslation1.frame_b) annotation(Line(points = {{39.8079,111.399},{54.92,111.399},{53.9969,111.341},{55.5486,111.341}}));
  connect(revolute2.frame_b,fixedtranslation2.frame_b) annotation(Line(points = {{38.0779,70.7648},{52.9455,70.7648},{53.8686,70.4554},{53.8686,70.4554}}));
  connect(fixed2.frame_b,revolute2.frame_a) annotation(Line(points = {{2.38628,90.3447},{11.9389,89.7293},{11.9389,70.4554},{17.8971,70.4554},{18.8202,70.4554}}));
  connect(midleg0.frame_a,fixedtranslation3.frame_a) annotation(Line(points = {{103.504,142.201},{99.369,142.201},{99.369,127.871},{82.4412,127.871},{82.4412,115.398},{95.583,116.052},{97.0778,116.052}}));
  connect(fixedtranslation3.frame_b,revoluteplanarloopconstraint2.frame_a) annotation(Line(points = {{117.078,116.052},{123.158,116.052},{123.158,106.521},{85.7849,106.521},{86.708,91.0993},{100.026,92.1528},{101.988,92.1528}}));
  connect(revolute.frame_b,cyl_tube_lower.frame_a) annotation(Line(points = {{-112.881,73.2246},{-105.007,73.2246},{-105.93,79.1828},{-99.7493,79.1137},{-98.7304,79.1137}}));
  connect(cyl_tube_lower.frame_b,prismatic2.frame_a) annotation(Line(points = {{-78.7304,79.1137},{-69.1288,79.1137},{-69.1288,38.1762},{-60.0163,38.1762},{-59.0932,38.1762}}));
  connect(revoluteplanarloopconstraint1.frame_b,cyl_tube_upper.frame_a) annotation(Line(points = {{-120.219,112.852},{-101.373,112.852},{-99.3458,106.17},{-99.3458,105.883}}));
  connect(cyl_tube_upper.frame_b,prismatic1.frame_a) annotation(Line(points = {{-79.3458,105.883},{-73.6851,105.883},{-73.6851,139.116},{-69.4793,139.116},{-68.5562,139.116}}));
  connect(lowerleg1.frame_b,revoluteplanarloopconstraint3.frame_a) annotation(Line(points = {{174.185,142.925},{180,142.925},{180,111.692},{143.692,111.692},{143.692,91.6923},{153.846,91.6923},{154.769,91.6923}}));
  connect(lowerleg0.frame_b,revoluteplanarloopconstraint3.frame_b) annotation(Line(points = {{175.545,39.5484},{184,39.5484},{184,92.3076},{174.769,92.3076},{174.769,92.3076}}));
  connect(fixedtranslation4.frame_b,revoluteplanarloopconstraint2.frame_b) annotation(Line(points = {{117.821,66.457},{132.049,66.457},{132.972,91.8002},{122.457,92.1528},{121.988,92.1528}}));
  connect(bodycylinder2.frame_b,revolute4.frame_a) annotation(Line(points = {{-3.66196,40.8748},{7.6271,40.8748},{7.6271,40.2791},{8.55018,40.2791}}));
  connect(revolute4.frame_b,upperleg1.frame_a) annotation(Line(points = {{30.6342,39.91},{45.7015,39.91},{44.7784,39.5782},{45.7015,39.5782}}));
  connect(bodycylinder1.frame_b,revolute3.frame_a) annotation(Line(points = {{-0.922985,142.494},{11.8329,142.494},{11.8329,142.62},{12.756,142.62}}));
  connect(revolute3.frame_b,upperleg0.frame_a) annotation(Line(points = {{33.0651,142.579},{49.6851,142.579},{50.6082,141.919},{50.6082,141.919}}));
  connect(prismatic2.frame_b,bodycylinder2.frame_a) annotation(Line(points = {{-38.5562,38.1987},{-24.6174,38.1987},{-23.6943,41.3306},{-23.6943,41.3306}}));
  connect(prismatic1.frame_b,bodycylinder1.frame_a) annotation(Line(points = {{-49.4436,140.167},{-32.1059,140.167},{-32.1059,142.971},{-21.2409,142.971},{-21.2409,142.971}}));
  connect(fixed1.frame_b,revoluteplanarloopconstraint1.frame_a) annotation(Line(points = {{-153.317,114.458},{-140.055,114.458},{-140.055,111.427},{-140.055,111.427}}));
  connect(fixed3.frame_b,revolute.frame_a) annotation(Line(points = {{-152.956,73.4756},{-133.267,73.4756},{-132.344,71.4722},{-132.344,71.4722}}));
  connect(midleg1.frame_a,fixedtranslation4.frame_a) annotation(Line(points = {{102.832,40.5819},{98.8281,40.5819},{97.905,53.6749},{91.359,53.6749},{92.2821,66.4226},{96.872,66.4226},{97.7951,66.4226}}));
  connect(midleg1.frame_b,revolute11.frame_a) annotation(Line(points = {{122.832,40.5819},{128.568,40.5819},{128.568,38.171},{129.491,38.171}}));
  connect(revolute11.frame_b,lowerleg0.frame_a) annotation(Line(points = {{149.205,39.2038},{154.408,39.2038},{155.331,38.8601},{155.331,38.8601}}));
  connect(upperleg1.frame_b,revolute10.frame_a) annotation(Line(points = {{66.984,39.1693},{74.4772,39.1693},{74.4772,41.6163},{75.4003,41.6163}}));
  connect(revolute10.frame_b,midleg1.frame_a) annotation(Line(points = {{94.7524,40.2202},{101.24,40.2202},{101.24,40.9273},{101.24,40.9273}}));
  connect(midleg0.frame_b,revolute9.frame_a) annotation(Line(points = {{123.504,142.201},{129.147,142.201},{128.224,140.841},{129.147,140.841}}));
  connect(revolute9.frame_b,lowerleg1.frame_a) annotation(Line(points = {{148.844,142.201},{152.686,142.201},{153.609,142.564},{153.609,142.564}}));
  connect(upperleg0.frame_b,revolute8.frame_a) annotation(Line(points = {{69.723,142.856},{75.5108,142.856},{75.5108,141.875},{76.4339,141.875}}));
  connect(revolute8.frame_b,midleg0.frame_a) annotation(Line(points = {{96.4578,142.184},{101.351,142.184},{102.274,141.186},{102.274,141.186}}));
  annotation(Icon(coordinateSystem(extent = {{-200,-200},{200,200}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10,10})), Diagram(coordinateSystem(extent = {{-200,-200},{200,200}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2,2})), experiment(StartTime = 0, StopTime = 100, Tolerance = 0.0001));
end legkine1;

