%��λ��������
function y=danwei(n)
y=[zeros(1,n-1) 1 zeros(1,n-1)];
stem((-n+1):(n-1),y) 
xlabel ('ʱ������');ylabel('���');title('��λ��������x1');