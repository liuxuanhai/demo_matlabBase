function [x,y] = getCircle(center,r)
%UNTITLED �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
t=linspace(0,2*pi,100);
x=r.*cos(t)+center(1)
y=r.*sin(t)+center(2)
end

