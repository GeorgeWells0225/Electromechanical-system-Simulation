wn = 1;
zeta = [0.1:0.1:1.2];
x = [];
y = [];
w = logspace(-1,1,100)
for i = 1:length(zeta)
    dd = wn^4 + wn.^4 + 2 * (2 * zeta(i)^2 - 1)* wn^2 * wn.^2;
    X = wn^2 * (wn^2 - w.^2)./dd;
    Y = -2 * zeta(i) * wn^3 * w./dd;
    X = [X x'];
    Y = [Y y'];
end
plot(X,Y)
axis('square')
grid
plot(X,Y)
axis('square')
grid
xlabel('Real Axis')
ylabel('Image Axis')
