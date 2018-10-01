%input parameter of the system 
num = [1 7 24 24];
den = [1 10 35 50 24];
%creat a transfer function model 
sys_tf = tf(num,den)
%convert the model to zero_pole - gain representation
sys_zpk = zpk(sys_tf)
%convert the model to state spce representation
sys_ss = ss(sys_tf)