sys = zpk(-2,[0 -sqrt(-2) sqrt(-2) -1],5);
sysclose = feedback(sys,1)
[z,p,k] = zpkdata(sysclose,'v')
ii = find(real(p) > 0);
Np = length(ii)
if(Np > 0) disp('系统不稳定')
else disp('系统稳定')
end
ii = find(real(z) > 0);
Nz = length(ii)
if(Nz ==0 & Np ==0)
    disp('此系统是最小相位系统')
else disp('此系统不是最小相位系统')
end
pzmap(sys)
