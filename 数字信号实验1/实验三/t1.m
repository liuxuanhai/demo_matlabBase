clc
clear
num=[0.0528 0.0797 0.1295 0.1295 0.797 0.0528];
den=[1 -1.8107 2.4947 -1.8801 0.9537 -0.2336 ];
[z,p,k]=tf2zp(num,den);
%m=abs(p);
disp('���');disp(z);
disp('����');disp(p);
disp('����ϵ��');disp(k);
sos=zp2sos(z,p,k);
disp('���׽�');disp(real(sos));
zplane(num,den);

figure;
disp('����Ƶ����Ӧ')
w=linspace(0,pi,256);
%��ϵͳ��λƵ����Ӧ
h=freqz(num,den,w);
subplot(211)
plot(w/pi,abs(h));
title('����Ƶ����Ӧ');ylabel('��ֵ')
subplot(212)
plot(w/pi,angle(h));grid;
title('��λ��Ӧ');ylabel('����')








