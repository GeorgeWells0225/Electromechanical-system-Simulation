k = 100;
z = -5;
p = [2 -8 -20];
GH = zpk(z,p,k)
figure(1)
subplot(121)
pzmap(GH)
grid
subplot(122)
nyquist(GH,'k')
gtext('开环系统')
grid
figure(2)
sysb = feedback(GH,1)
subplot(121)
step(sysb,'k')
ylabel('x_o(t)')
grid
gtext('闭环系统')
subplot(122)
impulse(sysb,'k')
ylabel('x_o(t)')
grid