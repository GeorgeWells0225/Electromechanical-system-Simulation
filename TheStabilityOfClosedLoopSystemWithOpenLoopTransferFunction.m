num = 100 * conv([1 5],[1 5])
den = conv([1 1],[1 -1 9])
GH = tf(num,den)
roots(GH.*den{1})
nyquist(GH)
axis('square')
grid