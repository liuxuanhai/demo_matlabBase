
%A=imread('anna.jpg');
A=imread('Test_ImageProcess4_eight.tif');
%A=rgb2gray(A);
n=6;
subplot(2,3,1)
imshow(A);
title('ԭͼ');
i1=edge(A,'sobel');

subplot(2,3,2)
imshow(i1);
title('sobel����');
i2=edge(A,'roberts');
subplot(2,3,3)
imshow(i2);
title('roberts����');
i3=edge(A,'prewitt');
subplot(2,3,4)
imshow(i3);
title('prewitt����');


mask=[0,1,0;1,-4,1;0,1,0];%������˹�˲�ģ��
A2=im2double(A);%ԭͼ��һ��uint8��ͼ����������Ϊuint8�࣬�������ؾ�Ϊ��ֵ����������˹�˲�ģ���д��ڸ�ֵ���任����е����и�ֵ���ص��ˡ�
i4=imfilter(A2,mask,'replicate');
subplot(2,3,5)
imshow(i4);
title('Laplacien����');


i5=edge(A,'log');
subplot(2,3,6)
imshow(i5);
title('log����');


A1=imread('image2.jpg');
A1=rgb2gray(A1);
figure,
subplot(1,3,1)
imshow(A1);
title('ԭͼ');

j1=edge(A1,'sobel','horizontal');
subplot(1,3,2)
imshow(j1);
title('ˮƽ��Ե���');

j2= edge(A1,'sobel','vertical');
subplot(1,3,3)
imshow(j2);
title('��ֱ��Ե���');



