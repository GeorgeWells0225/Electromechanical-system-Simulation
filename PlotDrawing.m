close all;
%关闭打开了的所有图形窗口
clc;
%清屏命令
clear;
%清除工作空间中所有变量
t = [0:pi/20:8*pi];
%定义时间范围
y=cos(t);
plot(t,y,'r:+')
grid
%r 表示线的颜色为红色
%此外y 黄色 g 绿色 b 蓝色 w 白色 k 黑色 m 紫色 c 青色
%square 方形 . 点