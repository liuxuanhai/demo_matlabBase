clc
clear
format compact;
data=fix(30+(98-30+1)*rand(20,5));
[maxscore,max_index]=max(data);
fprintf('��߷ּ���Ӧѧ�����:%d %d\n',[maxscore;max_index])
[minscore,min_index]=min(data);
fprintf('��ͷּ���Ӧѧ�����:%d %d\n',[minscore;min_index])
%ÿ�ſ�ƽ����
avgscore=mean(data);
fprintf('ÿ�ſ�ƽ����:%.2f\n',avgscore')
%��׼��
stdscore=std(data);
fprintf('ÿ�ſα�׼��:%.2f\n',stdscore')
data2=sum(data,2);
[maxscore,max_index]=max(data2);
fprintf('�ܷ���߷ּ���Ӧѧ�����:%d  %d\n',[maxscore;max_index])
[minscore,min_index]=min(data2);
fprintf('�ּܷ���Ӧѧ�����:%d %d\n',[minscore;min_index])

%��5�ſ��ְܷ��Ӵ�С��˳�����score�У���Ӧѧ����Ŵ���num
[score,num]=sort(data2,1,'descend');

%���5�ſγ�ƽ���ִ��ڵ���60�ֵ�ѧ��������ռ�ı���
count=zeros(1,5);
for i=1:20
    for j=1:5
        if data(i,j)>=60
            count(1,j)=count(1,j)+1;
        end
    end
    
end

propor=count./20;
fprintf('5�ſγ�ƽ���ִ��ڵ���60�ֵ�ѧ��������ռ�ı���:%f\n',propor')
