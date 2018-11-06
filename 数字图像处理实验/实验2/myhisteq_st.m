clc;
clear;
im = imread('Test_ImageProcess2_moon.tif');
histRef = twomodegauss(0.15,0.05, 0.75, 0.01,1, 0.07, 0.002);
hist    = imhist(im);               
cdf     = cumsum(hist) / numel(im); 
cdfRef  = cumsum(histRef) ;
M   = zeros(1,256);
for idx = 1 : 256
    [tmp,ind] = min(abs(cdf(idx) - cdfRef));%ͨ�������ۻ�ֱ��ͼ��������ĵ�,ȷ��ӳ���ϵ
    M(idx)    = ind-1;%�±���1-256,�ֱ��Ӧ�ĻҶ���0-255
end
test=double(im)+1;
imMatch = M(double(im)+1);%�Ҷ�ֵ��1��Ӧ��1-256��ӳ�������,ÿ��ֵ����Ӧӳ��
 
figure;%��ʾԭͼ��ƥ��ͼ���ƥ����ͼ��
subplot(1,3,1),imshow(im,[]);title('ԭͼ��');
subplot(1,3,3),imshow(imMatch,[]);title('ƥ��֮��ͼ��');
figure;%��ʾԭͼ��ƥ��ͼ���ƥ���ͼ���ֱ��ͼ
subplot(3,1,1),imhist(im,64);title('ԭͼ��ֱ��ͼ');
subplot(3,1,3),imhist(uint8(imMatch),64);title('ƥ��֮��ͼ��ֱ��ͼ');
