%ֱ��ͼ���� ���ú���
I=imread('lenna.bmp');
J=histeq(I);
subplot(4,2,1),imshow(I);title('ԭͼ');
subplot(4,2,2),imhist(I,64);title('ԭͼ-ֱ��ͼ');
subplot(4,2,3),imshow(J);title('ֱ��ͼ���⻯');
subplot(4,2,4), imhist(J,64);title('ֱ��ͼ���⻯-ֱ��ͼ');

p = twomodegauss(0.15,0.05, 0.75, 0.01,1, 0.07, 0.002);
plot(p);
g = histeq(f,p);
figure
subplot(4,2,5),imshow(f),title('ԭͼ');
subplot(4,2,6),imhist(f),title('ԭͼ-ֱ��ͼ');
subplot(4,2,7),imshow(g),title('��˹�涨��');
subplot(4,2,8),imhist(g),title('��˹�涨��-ֱ��ͼ');