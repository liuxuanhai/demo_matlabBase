clc
clear

n=3;
A=imread('Test_ImageProcess4_eight.tif');
subplot(1,n,1)
imshow(A);
title('ԭͼ');
G_ave=fspecial('average',3);
A=imfilter(A,G_ave);
subplot(1,n,2)
imshow(A);
title('��ֵģ����ԭͼ');

mask=[0,1,0;1,-4,1;0,1,0];%������˹�˲�ģ��
A2=im2double(A);%ԭͼ��һ��uint8��ͼ����������Ϊuint8�࣬�������ؾ�Ϊ��ֵ����������˹�˲�ģ���д��ڸ�ֵ���任����е����и�ֵ���ص��ˡ�

i4=A2-imfilter(A2,mask,'replicate');
i4=im2uint8(i4);
subplot(1,n,3)
imshow(i4);
title('Laplacien����');




