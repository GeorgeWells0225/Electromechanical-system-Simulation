num = [3.6]
den = [1,3,5]
G = tf(num,den)
[mag,pha,w] = bode(G);
magn(1,:) = mag(1,:);
phase(1,:) = pha(1,:);
[M,i] = max(magn);
Mr = 20 * log10(M);
Pr = phase(1,i);
Wr = w(i,1);
disp('   Mr     Pr     Wr' )
[Mr Pr Wr]
bode(G)
grid


