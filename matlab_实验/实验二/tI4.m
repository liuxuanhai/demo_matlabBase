%clc
%clear
%�����ܣ������·���ʾ����
output=@(x,s)fprintf('%d����%s\n',x,s);
s=input('����1~12���·�����:')  
switch(s)     %��������Ҫ�������룬��������ﶬ�ĸ����ںͼ�����
    case {1,2,3}
        output(s,'����')
    case {4,5,6}
        output(s,'�ļ�')
    case {7,8,9}
        output(s,'�＾')
    case {10,11,12}
        output(s,'����')
    otherwise
        disp('�������')
end
