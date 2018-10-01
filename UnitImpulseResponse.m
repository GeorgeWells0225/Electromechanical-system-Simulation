hold on
T = 0.5
t = 0:0.1:2
xo = exp(- t/T) /T
plot(t,xo,'k')
grid on
x0 = [T T]
y0 = [0 1/T]
x1 = [T 0]
y1 = [exp( -1) /T exp( -1) /T]
x2 = [0 T]
y2 = [1/T 0]
plot(x0,y0,'k',x1,y1,'k',x2,y2,'k')
xlabel('t')
ylabel('x_o(t)')
gtext('x_o(t) = exp( -t/T) /T','fontsize',14)
hold off
    
