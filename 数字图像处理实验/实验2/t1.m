%ֱ��ͼ���� ���ú���
I=imread('Test_ImageProcess2_moon.tif');
J=histeq(I);
subplot(2,2,1),imshow(I);title('ԭͼ');
subplot(2,2,2),imhist(I,64);title('ԭͼ-ֱ��ͼ');
subplot(2,2,3),imshow(J);title('ֱ��ͼ���⻯');
subplot(2,2,4), imhist(J,64);title('ֱ��ͼ���⻯-ֱ��ͼ');
