%image����Ҫ�˲���ͼ��,n���˲�ģ��Ĵ�С,��nXn
function f=myAve(image,n)
a(1:n,1:n)=1;
p=size(image);
image1=double(image);
image2=image1;
for i=1:p(1)-n+1
    for j=1:p(2)-n+1
        c=image1(i:i+n-1,j:j+n-1).*a;%��i,j��ʼȡģ���С��Ԫ�ص��ģ��
        s=sum(sum(c));%��c�����Ԫ�صĺ�
        image2(i+(n-1)/2,j+(n-1)/2)=s/(n*n);%����ֵ����ģ������λ�õ�Ԫ��
    end
end
f=uint8(image2);
        

