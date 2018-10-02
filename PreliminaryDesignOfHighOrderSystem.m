zuni = 0:0.01:1;
a1 = 1 - 2 * zuni.^2 + sqrt(2 - 4 * zuni.^2 + 4* zuni.^4)
a2 = sqrt(1 + 4 * zuni.^4) - 2 * zuni.^2
a = sqrt(a1./a2)
plot(zuni,a,'k')
grid
xlabel('\xi')
ylabel('\omega_b/\omega_c')