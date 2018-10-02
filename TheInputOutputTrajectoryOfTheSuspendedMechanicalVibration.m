%机械振动系统运动轨迹
num = [10 10];
den = [1 10 100];
t1 = 0:0.001:0.537;
x1 = 2.452 * t1.^2;
t2 = 0.538:0.001:1.5;
x2 = 0.707 * ones(size(t2));
t = [t1 t2];
x = [x1 x2]
Y = lsim(num,den,x,t)
plot(t,-x,'k',t,-Y,'k--');
grid
title('Response Of Hanging Mass -Damper -Spring system')
gtext('output y(t)')
gtext('input y(t)')