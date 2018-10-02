den = conv([1 5],[1 1 0]);
K = [10 100]
%
subplot(211)
margin(K(1),den)
grid
%
subplot(212)
margin(K(2),den)
grid
%[K(1) 20 * log10(Gm1) Pm1 Wg1 Wc1;K(2) 20 * log10(Gm2) Pm2 Wg2 Wc2]
figure(2)
subplot(211)
sys = tf(K(1),den)
sysb = feedback(sys,1)
step(sysb)
grid
%
subplot(212)
sys1 = tf(K(2),den)
sysb1 = feedback(sys1,1)
step(sysb1)
grid