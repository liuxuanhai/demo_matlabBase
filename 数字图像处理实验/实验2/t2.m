%ֱ��ͼ�涨��
f = imread('Test_ImageProcess2_moon.tif');
p = twomodegauss(0.15,0.05, 0.75, 0.01,1, 0.07, 0.002);
plot(p);
g = histeq(f,p);
test=sum(p);
figure
subplot(2,2,1),imshow(f),title('ԭͼ');
subplot(2,2,2),imhist(f),title('ԭͼ-ֱ��ͼ');
subplot(2,2,3),imshow(g),title('��˹�涨��');
subplot(2,2,4),imhist(g),title('��˹�涨��-ֱ��ͼ');
