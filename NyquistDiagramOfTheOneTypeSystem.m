subplot(121)
w = -10:0.1:10;
u = -10./(1 + w.^2);
v = -20./(w + w.^3);
plot(u,v,'k')
xlabel('Real Axia')
ylabel('Image Axis')
grid
subplot(122)
sys = tf(10,[1 1 0])
nyquist(sys)
grid