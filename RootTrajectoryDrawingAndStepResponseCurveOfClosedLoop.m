K = 1
G0 = tf(K * [1 1],[1 1 10])
Gb = feedback(G0,1)
subplot(121)
rlocus(G0,'k -')
grid
subplot(122)
step(Gb,'k -')
grid