T = 1;
k = [0.1 0.2 0.5 0.8 1 2.4]
t = linspace(0,20,200)
num = 1;
den = conv([1,0],[T,1])
for j = 1:6
    s1 = tf(num * k(j),den)
    sys = feedback(s1,1)
    y(:,j) = step(sys,t)
end
plot(t,y(:,1:6))
grid on
gtext('k = 0.1','linewideth',1.5,'fontsize',10)
gtext('k = 0.2','linewideth',1.5,'fontsize',10)
gtext('k = 0.5','linewideth',1.5,'fontsize',10)
gtext('k = 0.8','linewideth',1.5,'fontsize',10)
gtext('k = 1.0','linewideth',1.5,'fontsize',10)
gtext('k = 2.4','linewideth',1.5,'fontsize',10)