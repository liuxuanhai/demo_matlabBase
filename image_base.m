%����ͼƬ
image1=imread('image1.jpg');
imshow(image1)

%��Ƭ
% image1_1=imadjust(image1,[0,1],[1,0]);
% figure,imshow(image1_1);

%����ɫͼƬת��Ϊ�Ҷ�ͼƬ
image1_gray=rgb2gray(image1)
figure,imshow(image1_gray)
