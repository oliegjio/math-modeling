(* ::Package:: *)

Module[{a, c, x, y, z, v, u},
	a = 20;
	c = 100;
	x = (c + a Cos @ v) Cos @ u;
	y = (c + a Cos @ v) Sin @ u;
	z = a Sin @ v;
	ParametricPlot3D[{x, y, z}, {v, 0, 2 Pi}, {u, 0, 2 Pi}]
]


Module[{a, c, x, y, z, v, u},
	a = 16;
	c = 100;
	x = (c + a Cos @ v) Cos @ u;
	y = (c + a Cos @ v) Sin @ u;
	z = a Sin @ v;
	ParametricPlot3D[{x, y, z}, {v, 0, 2 Pi}, {u, 0, 2 Pi}]
]


torusArea[r_, R_] := (2 Pi R) (2 Pi r);
torusVolume[r_, R_] := (Pi r ^ 2) (2 Pi R);


torusVolume[20, 100] // N
torusVolume[16, 100]


wallThickness = 2;
majorRadius = 100;
minorRadius = 20;
volume = torusVolume[minorRadius, majorRadius] - torusVolume[minorRadius - 2 wallThickness, majorRadius]
volumeN = volume // N



