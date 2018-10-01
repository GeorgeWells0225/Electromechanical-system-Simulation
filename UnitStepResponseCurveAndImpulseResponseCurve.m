num = 1;
den = [1 0.4 1];
sys = tf(num,den);
subplot(121)
step(sys)
ylabel('x_o(t)')
grid on
subplot(122)
impulse(sys)
ylabel('x_o(t)')
grid on