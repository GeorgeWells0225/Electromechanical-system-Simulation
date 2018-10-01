hold on;
a = 0:0.2:10;
xo = 1 - exp( -a)
plot(a,xo,'k')
x0 = [0 10]
y0 = [1 - exp(-1) 1 - exp(-1)]
y1 = [0 1]
x1 = [0 1]
plot(x0,y0,'k',x1,y1,'k')
xlabel('t/T')
ylabel('x_o(t)')
grid on
gtext('x_0(1) = 0.623')
hold off