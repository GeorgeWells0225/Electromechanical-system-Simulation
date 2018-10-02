w = logspace(-1,1,100)
Lw = 20 * log10(w)
phi_w = 90
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