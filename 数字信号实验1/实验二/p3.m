%��λ�弤��Ӧ
%filter����
a2=1;
b2=[0 0.25*ones(1,4)];
n=0:20;
x1=[1 zeros(1,20)]
s1filter=filter(b2,a2,x1);
subplot(3,1,1)
stem(n,s1filter);
title("ϵͳ2��λ�弤filter");
xlabel('x');
ylabel('y');

%conv����
x1=[1 zeros(1,10)]
h=impz(b2,a2,11);
s1conv=conv(h,x1);
subplot(3,1,2)
stem(n,s1conv,'filled')
title("ϵͳ2��λ�弤conv");
xlabel('x');
ylabel('y');

%ʹ��impz����
s1impz=impz(b2,a2,21);
subplot(3,1,3)
stem(n,s1impz)
title("ϵͳ2��λ�弤impz");
xlabel('x');
ylabel('y');


%��λ��Ծ��Ӧ
%ʹ��filter����
x2=ones(1,21);
s1filter=filter(b2,a2,x2);
figure,
subplot(3,1,1)
stem(n,s1filter);
title("ϵͳ2��Ծ��Ӧfilter");
xlabel('x');
ylabel('y');
%ʹ��conv����
x2=ones(1,21);
h=impz(b2,a2,21);
s1conv=conv(h,x2);
s1conv=s1conv(1:21);
subplot(3,1,2)
stem(n,s1conv,'filled')
title("ϵͳ2��Ծ��Ӧconv");
xlabel('x');
ylabel('y');

%ʹ��impz����
b=[0,0.25,0.5,0.75,ones(1,17)];
s1impz=impz(b,a2,21);
subplot(3,1,3)
stem(n,s1impz)
title("ϵͳ2��Ծ��Ӧimpz");
xlabel('x');
ylabel('y');
