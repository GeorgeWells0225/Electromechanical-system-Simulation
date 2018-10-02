figure(1)
w = 0:0.1:10
A = 10 * sqrt(w.^2 + 1)
dd = (13 -w.^2).^2 + 16 * w.^2
dd = sqrt(dd)
A = A./dd
re = 40 * w -10 * w.*w + 130
re = re./dd
im = 130 - 10.*w - 40 * w
im = im./dd
xlabel('\omega')
ylabel('|G(j\omega)')
grid
plot(re,im)
x = atan(w) -atan(4 * w/(13 -w.^2))
%plot(w,x,'k')

xlabel('\omega')
ylabel('\phi(\omega)')
grid
figure(2)
sys = tf(10 * [1 1],[1 4 13])
subplot(121)
pzmap(sys)
grid
subplot(122)
nyquist(sys)
grid
figure(3)
subplot(211)
plot(w,A,'k')
grid
subplot(212)
plot(w,x,'k')
grid