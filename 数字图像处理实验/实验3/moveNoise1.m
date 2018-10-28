clc
clear
sub_m=3;
sub_n=3;

A=imread('lenna.bmp');
A=rgb2gray(A);
subplot(331)
imshow(A)
title('ԭͼ');
%��ͼ����Ӹ�˹������
subplot(334)
A_gauss=imnoise(A,'gaussian');
imshow(A_gauss)
title('��Ӹ�˹������');

subplot(337)
%��ͼ����ӽ�������
A_saltAndPepper=imnoise(A,'salt & pepper');
imshow(A_saltAndPepper);
title('��ӽ�������')

%ʹ��matlab��ɾ�ֵ�˲�
n=3;%�˲���ģ���С
G_ave=fspecial('average',n);
A_gauss_after_ave=imfilter(A_gauss,G_ave);
subplot(335)
imshow(A_gauss_after_ave)
title('��Ӹ�˹���������ֵ�˲�');

A_sp_after_ave=imfilter(A_saltAndPepper,G_ave);
subplot(338)
imshow(A_gauss_after_ave)
title('��ӽ����������ֵ�˲�');

%ʹ��matlab�����ֵ�˲�
%�߽���þ�����
%{
A_gauss_after_med1=medfilt2(A_gauss(:,:,1),[3 3]);%��
A_gauss_after_med2=medfilt2(A_gauss(:,:,2),[3 3]);%��
A_gauss_after_med3=medfilt2(A_gauss(:,:,3),[3 3]);%��
A_gauss_after_med=A_gauss;
A_gauss_after_med(:,:,1)=A_gauss_after_med1;
A_gauss_after_med(:,:,2)=A_gauss_after_med2;
A_gauss_after_med(:,:,3)=A_gauss_after_med3;
%}
A_gauss_after_med=medfilt2(A_gauss,[3 3]);
subplot(336)
imshow(A_gauss_after_med)
title('��Ӹ�˹����������ֵ�˲�');

A_sp_after_med=medfilt2(A_saltAndPepper,[3 3]);
subplot(339)
imshow(A_sp_after_med)
title('��ӽ�����������ֵ�˲�');





