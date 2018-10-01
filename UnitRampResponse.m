hold on 
T = 0.5
t = 0:0.1:2
xo = t - T*(1 - exp(-t/T))
plot(t,xo,'k',t,t,'k')
x0 = [1 1]
y0 = [0 2]
plot(x0,y0,'k')
xlabel('t')
ylabel('x_o(t)')
disp('请输入交点：')
[x1,y1] = ginput(1)
[x2,y2] = ginput(1)
abs(y2,-y1)
gtext('x_o(t)','fontsize',14)
gtext('x_i(t)','fontsize',14)
gtext('t = 1','fontsize',14)
gtext('\leftarrow 交点1','fontsize',14)
gtext('交点2 \rightarrow','fontsize',14)
grid on
hold off