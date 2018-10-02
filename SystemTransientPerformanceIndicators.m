sys = zpk([],[-1 + 3 * i -1 -3 * i],3);
[num,den] = tfdata(sys,'v');
finalvalue = polyval(num,0) /polyval(den,0)
[y,t] = step(sys)
[Y,k] = max(y);
tp = t(k)
Mp = 100 * (Y - finalvalue) /finalvalue
%compute rise time
n = 1;
while y(n) < 0.1 * finalvalue
n = n + 1;
end
m = 1;
while y(m) < 0.9 * finalvalue
m = m + 1;
end
tr = t(m) - t(n);
%conpute setting time
i = length(t);
while (y(i) > 0.98 * finalvalue) & (y(i) < 1.02 * finalvalue)
i = 1 - 1;
end
ts = t(i)
disp('tp Mp tr ts')
[tp Mp tr ts]

