sys = zpk([],[-1+3*i -1-3*i],3);
step(sys);
grid on
[tr,y1] = ginput(1);%������ʱ��
[tp,ynax] = ginput(1);%�����ֵ
[ts,y2] = ginput(1);%�����ʱ��
Mp = (ymax - y1) /y1 * 100;
disp('tp Mp tr ts')
[tp Mp tr ts]


