%根据输出方程求曲线
t = 0:0.001:15;
q = 0.1 * exp( -5 * t)
plot(t,q)
grid
title('the unite response of the damp -spring system')
xlabel('time(s)')
ylabel('angle of the rode')
