Z0=rand(5)
x=1:5;
[X0,Y0]=meshgrid(x);
subplot(121)
surf(X0,Y0,Z0);
x1=1:.1:5;
[X1,Y1]=meshgrid(x1);
Z1=interp2(X0,Y0,Z0,X1,Y1,'cubic');
subplot(122)
colormap('hsv');
%���ɫ����colorbar

shading interp 
%����15���ȸ���(hold , contour)

surf(X1,Y1,Z1);
colorbar;
hold on;
contour(X1,Y1,Z1,15)
title('�ƿ�161')
xlabel('1600200010')
ylabel('������')