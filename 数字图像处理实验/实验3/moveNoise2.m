clc
clear
sub_m=3;
sub_n=3;

A=imread('lenna.bmp');
A=rgb2gray(A);
subplot(3,5,1)
imshow(A)
title('ԭͼ');
%��ͼ����Ӹ�˹������
subplot(3,5,6)
A_gauss=imnoise(A,'gaussian');
imshow(A_gauss)
title('��Ӹ�˹������');

subplot(3,5,11)
%��ͼ����ӽ�������
A_saltAndPepper=imnoise(A,'salt & pepper');
imshow(A_saltAndPepper);
title('��ӽ�������')

%�Ա��ֵ�˲�
n=3;%�˲���ģ���С
A_gauss_after_ave=myAve(A_gauss,n);
subplot(3,5,7)
imshow(A_gauss_after_ave)
title('��Ӹ�˹���������ֵ�˲�');

A_sp_after_ave=myAve(A_saltAndPepper,n);
subplot(3,5,12)
imshow(A_gauss_after_ave)
title('��ӽ����������ֵ�˲�');

%�Ա���ֵ�˲�
A_gauss_after_med=myMed(A_gauss,n);
subplot(3,5,8)
imshow(A_gauss_after_med)
title('��Ӹ�˹����������ֵ�˲�');

A_sp_after_med=myMed(A_saltAndPepper,n);
subplot(3,5,13)
imshow(A_sp_after_med)
title('��ӽ�����������ֵ�˲�');

%�Ա����ֵ�˲�
A_gauss_after_max=myMax(A_gauss,n);
subplot(3,5,9)
imshow(A_gauss_after_max)
title('��Ӹ�˹�����������ֵ�˲�');

A_sp_after_max=myMax(A_saltAndPepper,n);
subplot(3,5,14)
imshow(A_sp_after_max)
title('��ӽ������������ֵ�˲�');

%�Ա���Сֵ�˲�
A_gauss_after_min=myMin(A_gauss,n);
subplot(3,5,10)
imshow(A_gauss_after_min)
title('��Ӹ�˹����������Сֵ�˲�');

A_sp_after_min=myMin(A_saltAndPepper,n);
subplot(3,5,15)
imshow(A_sp_after_min)
title('��ӽ�����������Сֵ�˲�');