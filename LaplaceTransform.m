syms K T t;
G = K * (exp( -t/T));
Gs = laplace(G) %求拉普拉斯变换
Gs = simplify(Gs) %对结果进行化简

%上式为G等于K乘以e的-1/T