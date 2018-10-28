%�Ƴ��������������ϵͳ�ĵ�λ�弤��Ӧ�ͽ�Ծ��Ӧ���������ͼ�Ρ�Ҫ��ֱ��� filter��conv��impz���ֺ�����ɡ�
%ϵͳ1

%��λ�弤��Ӧ
%ʹ��filter����
a1=[1 0.75 0.125];
b1=[1 -1];
n=0:20
x1=[1 zeros(1,20)]
s1filter=filter(b1,a1,x1);
subplot(3,1,1)
stem(n,s1filter);
title("ϵͳ1��λ�弤filter");
xlabel('x');
ylabel('y');


%ʹ��conv����
x1=[1 zeros(1,10)];
h=impz(b1,a1,11);
s1conv=conv(h,x1);
subplot(3,1,2)
stem(n,s1conv,'filled')
title("ϵͳ1��λ�弤conv");
xlabel('x');
ylabel('y');

%ʹ��impz����
s1impz=impz(b1,a1,21);
subplot(3,1,3)
stem(n,s1impz)
title("ϵͳ1��λ�弤impz");
xlabel('x');
ylabel('y');

%��λ��Ծ��Ӧ
%ʹ��filter����
x2=ones(1,21);
s1filter=filter(b1,a1,x2);
figure,
subplot(3,1,1)
stem(n,s1filter);
title("ϵͳ1��Ծ��Ӧfilter");
xlabel('x');
ylabel('y');
%ʹ��conv����
x2=ones(1,21);
h=impz(b1,a1,21);
s1conv=conv(h,x2);
subplot(3,1,2)
s1conv=s1conv(1:21)
stem(n,s1conv,'filled')
title("ϵͳ1��Ծ��Ӧconv");
xlabel('x');
ylabel('y');

%ʹ��impz����
b=1
s1impz=impz(b,a1,21);
subplot(3,1,3)
stem(n,s1impz)
title("ϵͳ1��Ծ��Ӧimpz");
xlabel('x');
ylabel('y');








