%3.	�̲�P362ҳ ʵ��4 ��1��
clc
clear
x=[-5.0 -3.0 1.0 2.0 2.5 3.0 5.0]
output=@(x,y)fprintf("��x=%.2fʱ,y=%.2f\n",x,y);%��������
for i=x
    if i<0&i~=-3
        y=i^2+i-6;
        output(i,y)
    elseif i>=0&i<5&i~=2&i~=3
        y=i^2-5*i+6;
        output(i,y);
    else 
        y=i^2-i-1;
        output(i,y)
    end
end