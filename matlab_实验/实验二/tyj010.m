%����m1,m2,seita��a1,a2,N1,N2

%������1600200010
function f = tyj010(m1,m2,seita)
x=[m1*cosd(seita),-m1,-sind(seita),0;
    m1*sind(seita),0,cosd(seita),0;
    0,m2,-sind(seita),0;
    0,0,-cosd(seita),1
]
result=inv(x)*[0 m1*9.8 0 m2*9.8]'
end

