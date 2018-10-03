%�󿪻����ݺ���
G = 700/9.8
D = 0.09 %����ֱ��
bata = 7* 10^8 + 8
Ac = pi * D^2/4  %�������
L = 0.1
V0 = L * Ac  %�ݻ�
wh = sqrt(bata * Ac/(L * G))
Kv = 193.7
zuni = 0.3
num = Kv
den = [1/(wh * wh) 2 * zuni/wh 1 0]
sys = tf(num,den)
figure(1)
%ʱ�����������ϵͳ�ıջ����ݺ���
sysb = feedback(sys,1)
subplot(121)
step(sysb)  %���ƽ�Ծ��Ӧͼ
grid on
subplot(122)
impulse(sysb,'k')  %����������Ӧ����
grid on
ylabel('x_o(t)')
%���ÿ������ݺ�����Ƶ�����
figure(2)
margin(sys)  %����Bodeͼ
grid on
figure(3)
subplot(121)
pzmap(sys)
grid
subplot(122)
nyquist(sys)