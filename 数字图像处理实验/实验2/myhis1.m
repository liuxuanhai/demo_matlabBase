f=imread('Test_ImageProcess2_moon.tif')
myhist=imhist(f)
h=imhist(f)./numel(f);%ÿ���Ҷȼ������ظ��������ܵ����ظ���
c=cumsum(h);%���ۻ������ܶ�
[row,col] = size(f);
g=f;
for i = 1:row
    for j = 1:col
       g(i,j)=c(f(i,j)+1,1)*255;
    end
end
figure;
subplot(221);imshow(f);title('ԭͼ');
subplot(222);imhist(f,64);title('');
subplot(223);imshow(g);title('���⻯');
subplot(224);imhist(g,64);title('');