syms K T t;
G = K * (exp( -t/T));
Gs = laplace(G) %��������˹�任
Gs = simplify(Gs) %�Խ�����л���

%��ʽΪG����K����e��-1/T