syms a T s t k fz;
fs = a/s^2/(s + a);
%��������˹���任
ft = ilaplace(fs,t)
%�Խ������
ft = simplify(ft)
%�����滻���˴���K * T �滻 t
ftt = subs(ft,t,k * T)
%��z�任
fz = ztrans(ftt)
%�Խ�����л���
fz = simplify(fz)


%�÷����������(a/(s^2(s+a))�����崫�ݺ�������������ΪT