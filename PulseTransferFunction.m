syms a T s t k fz;
fs = a/s^2/(s + a);
%求拉普拉斯反变换
ft = ilaplace(fs,t)
%对结果化简
ft = simplify(ft)
%进行替换，此处用K * T 替换 t
ftt = subs(ft,t,k * T)
%求z变换
fz = ztrans(ftt)
%对结果进行化简
fz = simplify(fz)


%用符号运算计算(a/(s^2(s+a))的脉冲传递函数，采样周期为T