%计算2000以内的fibnacci数
f(1) = 1
f(2) = 2;
i = 1;
while f(i) + f(i+1) < 2000
    f(i + 2) = f(i) + f(i + 1)
    i = i + 1
end
f
