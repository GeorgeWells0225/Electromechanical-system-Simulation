%unite impulse
t = 0:0.1:12;
num = [1]
den = zeros(6,3);
zeta = [0.1 0.3 0.5 0.7 0.9 1]
y = zeros(length(t),4);
  for i = 1:6
      den(i,:) = [1 2 * zeta(i) 1];
      [y(:,i),x,t] = impulse(num,den(i,:),t);
  end
  plot(t,y,'k')
  xlabel('w_nt');
  ylabel('x_0(t)');
  title('zeta = 0.1 0.3 0.5 0.7 0.9 1')
  grid on
  gtext('0.1','fontsize',9)
  gtext('0.3','fontsize',9)
  gtext('0.5','fontsize',9)
  gtext('0.7','fontsize',9)
  gtext('0.9','fontsize',9)
  gtext('1.0','fontsize',9)
  
  