subplot(121);
wn = 1;
z = 0.1;
b = [0.1 0.2 0.5 1]
for i = 1:length(b)
    sys = tf(wn^2 * [1 b],[1 2 * z * wn,0])
    rlocus(sys)
    hold on
end
gtext('b > 0')
gtext('b = 0.5')
gtext('b = 1')
grid
subplot(122)
wn = 1
z = 0.1
b = [-0.1 -0.2 -0.5 1]
for i = 1:length(b)
    sys = tf(wn^2 *[1 b],[1 2 * z * wn 0])
    rlocus(sys)
    hold on
end
gtext('b < 0')
gtext('b = -0.1')
gtext('b = -0.2')
gtext('b = -0.5')
gtext('b = -1.0')
grid