w = -100:0.1:100
u = 1./(w.*w + 1)
v = w./(w.*w + 1)
subplot(121)
plot(u,v,'k')
grid on
xlabel('Real Axis');
ylabel('Image Axis');
gtext('\omega\rightarrow\infty')
subplot(122)
u1 = 1
v1 = 1 + w
plot(u1,v1)
grid on
xlabel('Real Axis')
ylabel("Image Axis")
gtext('\omega \uparrow \infity')