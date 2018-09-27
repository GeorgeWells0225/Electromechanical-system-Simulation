syms x;
f = exp(-x^2);
int1 = int(f,x)
int2 = int(f,x,-inf,inf)
%已知表达式，求对X的积分