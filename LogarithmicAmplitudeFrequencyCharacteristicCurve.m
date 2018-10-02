w = logspace(-1,1,100)
k = 10;
Lw = 20 * log10(k)
phi_w = 0
subplot(211)
semilogx(w,Lw)
grid
xlabel('\omega')
ylabel('L\omega')
subplot(212)
semilogx(w,phi_w)
grid
xlabel('\omega')
ylabel('\phi (\omega)')