subplot(121)
sys = tf(1,[1 1.8 1.8 1])
pzmap(sys)
grid
subplot(122)
nyquist(sys)
grid
[re,im,w] = nyquist(sys)
figure(2)
figure(2)
sys1 = feedback(sys,1)
step(sys1)
grid