sys_old = tf(1,conv([1 3 0],[1 2 2]));
sys_oldb = feedback(sys_old,1);
sys_new = zpk([],[-1.6331 + 0.6331i,-1.6331 - 0.6331i,-0.3669 + 0.6331i,-0.3669 - 0.6331i],1.6426)
sys_newb = feedback(sys_new,1)
step(sys_oldb,'k',sys_newb,'r*')
grid
gtext('新系统')
gtext('老系统')
