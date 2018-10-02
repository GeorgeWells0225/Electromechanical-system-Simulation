k = 100;
z = [-5];
p = [2 -8 -20];
GH = zpk(z,p,k)
[Re,Im,w] = nyquist(GH)
plot(Re(:,:))
Im(:,:)
xlabel('Real Axis')
ylabel('Image Axis')
title('Nyquist of G(s) H(s) = 100(s + 5)/[(s - 2)(s + 8)(s + 20)]')
grid