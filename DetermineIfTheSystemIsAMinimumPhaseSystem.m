sys = zpk(-2,[0 -sqrt(-2) sqrt(-2) -1],5);
sysclose = feedback(sys,1)
[z,p,k] = zpkdata(sysclose,'v')
ii = find(real(p) > 0);
Np = length(ii)
if(Np > 0) disp('ϵͳ���ȶ�')
else disp('ϵͳ�ȶ�')
end
ii = find(real(z) > 0);
Nz = length(ii)
if(Nz ==0 & Np ==0)
    disp('��ϵͳ����С��λϵͳ')
else disp('��ϵͳ������С��λϵͳ')
end
pzmap(sys)
