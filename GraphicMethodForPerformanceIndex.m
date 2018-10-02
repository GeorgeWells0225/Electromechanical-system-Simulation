sys = zpk([],[-1+3*i -1-3*i],3);
step(sys);
grid on
[tr,y1] = ginput(1);%求上升时间
[tp,ynax] = ginput(1);%求最大值
[ts,y2] = ginput(1);%求调整时间
Mp = (ymax - y1) /y1 * 100;
disp('tp Mp tr ts')
[tp Mp tr ts]


