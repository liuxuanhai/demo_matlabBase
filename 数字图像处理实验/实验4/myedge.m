A=imread('image2.jpg');
A=rgb2gray(A);
mask=[-1,-2,-1;0,0,0;1,2,1];%sobel�˲�ģ��
A2=im2double(A);%ԭͼ��һ��uint8��ͼ����������Ϊuint8�࣬�������ؾ�Ϊ��ֵ����������˹�˲�ģ���д��ڸ�ֵ���任����е����и�ֵ���ص��ˡ�
i4=imfilter(A2,mask,'replicate');
subplot(2,3,5)
imshow(i4);
title('sobel����');