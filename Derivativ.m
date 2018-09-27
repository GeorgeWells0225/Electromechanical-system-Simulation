syms a x
f = sin ( a * x);
%对X求导
dfx = diff(f,x)
%对a 求导
dfa = diff(f,a)
%已知表达式，分别对X,A求导