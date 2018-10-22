clc;
clear;
close all;
I=imread('lenna.bmp');
[m,n]=size(I);
J=zeros(1,256);
%�Ҷ�ֵͳ�Ƹ����������J�У���i�д���,����ֵΪi�ĸ���ΪJ(i);
for i=1:m
    for j=1:n
        k=I(i,j);
        J(k+1)=J(k+1)+1;
    end
end
%bar(J);������bar����ԭʼͼ��ֱ��ͼ�������ֱ��ͼû�й�һ����
subplot(2,2,1)
imshow(I);
subplot(2,2,2)
imhist(I);


%����Ҷȼ�����ֵ�����ĸ��ʴ�С
Z=zeros(1,256);
for i=1:256
    Z(i)=J(i)/(m*n);
end

%�����ۻ��ֲ�����
G=zeros(1,256);
G(1)=Z(1);
for i=2:256
    G(i)=G(i-1)+Z(i);
end
%��������ۻ��ֲ������������ú���cumsum��Z������
%�ۻ��ֲ�����ȡ���������һ��1��256��
G=uint8(255*G+0.5);
%��ͼ����о��⻯
for i=1:m
    for j=1:n
        I(i,j)=G(I(i,j)+1);
    end
end
subplot(2,2,3)
imshow(I);
subplot(2,2,4)
imhist(I);
