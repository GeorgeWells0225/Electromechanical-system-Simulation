k = 147.3;
num0 = k * [1 1.5];
den00 = [1 2 5];
den01 = conv(conv([1 2 5],[1 10 26]),[1 1.7])
sys1 = tf(5,den00);
sys2 = tf(num0,den01);
step(sys1,sys2);
xlabel('t(sec)')
ylabel('x_o(t)')
grid on
gtext('original system response')
gtext('predominate poles modifies system response')
