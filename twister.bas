0REM https://twitter.com/bbcmicrobot/status/1250546487861354496
1MO.1:Q=250:F.A=0TO1024S.8:X=SIN(A/Q)*200+600:Y=SIN(A/Q+90)*200+600:Z=SIN(A/Q+180)*200+600:MOVEX,A
3IFX<Y DR.X,A:GC.0,1:DR.Y,A
4IFY<Z DR.Y,A:GC.0,2:DR.Z,A
5IFZ<X DR.Z,A:GC.0,3:DR.X,A
6N.

0REM https://twitter.com/bbcmicrobot/status/1275975178481172480
1MO.2:Q=25:F.A=0TO2048S.8:X=SIN(A/Q)*200+600+400*SIN(A/200):Y=SIN(A/Q+90)*200+600+400*SIN(A/200):Z=SIN(A/Q+180)*200+600+400*SIN(A/200):MOVEX,A
3IFX<Y DR.X,A:GC.16,1:DR.Y,A
4IFY<Z DR.Y,A:GC.0,3:DR.Z,A
5IFZ<X DR.Z,A:GC.0,1:DR.X,A
6Q=Q+0.5
7N.