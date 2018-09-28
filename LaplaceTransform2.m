syms t s;
syms a b postive;
dt = sym('Dirac(t - a)')
ut = sym('Heaviside(t - b)')
mt = [dt,ut;exp(-a * t) * sin(b *t),t^2 * cos(3 *t)]
ms = laplace(mt,t,s)
