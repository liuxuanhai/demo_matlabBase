
%��ȡͼƬ
A1=imread('lenna.bmp');
%A2=imread('anna.jpg');
%A3=imread('goldhill.bmp');
%A4=imread('pepper.bmp');

%imshow(A1,[0 100]);%[low high]�Ҷȷ�Χ
%imhist(A1);
%figure;imhist(A1,100)

%���任
subplot(4,2,1)
G1=intrans(A1,'neg');
imshow(G1);
subplot(4,2,2)
imhist(G1)
%�����任
subplot(4,2,3)
G2=intrans(A1,'log',5,2);
imshow(G2);
subplot(4,2,4)
imhist(G2)

%gamma�任
subplot(4,2,5)
G3=intrans(A1,'gamma',2);
imshow(G3);
subplot(4,2,6)
imhist(G3)

%�Աȶ�����
subplot(4,2,7)
G4=intrans(A1,'stretch',2,2);
imshow(G4);
subplot(4,2,8)
imhist(G4)


