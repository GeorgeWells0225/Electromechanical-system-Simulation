t = [0:pi/20:9*pi];
hold on;
%允许在同一坐标系下绘制不同的图形
plot(t,sin(t),'r:*')
plot(t,cos(t))
plot(t,-cos(t),'k')
grid on
%在所画出的图形坐标中添加栅格，注意在plot之后
grid off
%删除栅格
hold off 
%覆盖旧图
plot(t,-sin(t))
