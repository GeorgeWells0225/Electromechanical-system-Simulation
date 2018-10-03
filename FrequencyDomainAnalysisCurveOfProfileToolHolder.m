%求开环传递函数
G = 700/9.8
D = 0.09 %活塞直径
bata = 7* 10^8 + 8
Ac = pi * D^2/4  %活塞面积
L = 0.1
V0 = L * Ac  %容积
wh = sqrt(bata * Ac/(L * G))
Kv = 193.7
zuni = 0.3
num = Kv
den = [1/(wh * wh) 2 * zuni/wh 1 0]
sys = tf(num,den)
figure(1)
%时域分析法，求系统的闭环传递函数
sysb = feedback(sys,1)
subplot(121)
step(sysb)  %绘制阶跃响应图
grid on
subplot(122)
impulse(sysb,'k')  %绘制脉冲响应曲线
grid on
ylabel('x_o(t)')
%利用开环传递函数求频域分析
figure(2)
margin(sys)  %绘制Bode图
grid on
figure(3)
subplot(121)
pzmap(sys)
grid
subplot(122)
nyquist(sys)