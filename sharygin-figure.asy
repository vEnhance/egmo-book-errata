import geometry;
size(8cm);
pair foot(pair P, pair A, pair B) { return foot(triangle(A,B,P).VC); }

/* Initialize Objects */
pair A = (-3.0, -1.0);
pair B = (0.0, -1.0);
pair C = (-2.0105, 0.7088);
pair C_1 = (-1.9336, -1.0);
pair B_1 = 2*(foot(circumcenter(C,B,C_1),C,A))-C;
pair A_1 = 2*(foot(circumcenter(C,A,C_1),C,B))-C;
pair C_2 = extension(A, A_1, B, B_1);

/* Draw objects */
draw(A--B--C--cycle, rgb(0.0,0.6,1.0));
draw(circumcircle(C,C_1,B), rgb(0.0,0.8,0.4));
draw(circumcircle(C,C_1,A), rgb(0.0,0.8,0.4));
draw(C_1--C_2, rgb(0.0,0.6,0.6));
draw(A--A_1, rgb(0.0,0.6,0.6));
draw(B--B_1, rgb(0.0,0.6,0.6));
draw(A_1--C_1--B_1);

/* Label points */
dot("$A$", A, dir(222));
dot("$B$", B, dir(-42));
dot("$C$", C, dir(100));
dot("$C_1$", C_1, dir(-95)*2);
dot("$A_1$", A_1, dir(30));
dot("$B_1$", B_1, dir(170));
dot("$C_2$", C_2, dir(105));
