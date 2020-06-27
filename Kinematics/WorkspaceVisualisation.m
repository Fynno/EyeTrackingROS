t1=linspace(-45,180,90);
t2=linspace(-90,90,90);
d3=linspace(-90,90,90);

[T1,T2,T3]=ndgrid(t1,t2,d3);
%%
xM = fixPara.d2*sind(T1) - fixPara.a3*sind(T1).*sind(T3) + fixPara.a3*cosd(T1).*cosd(T2).*cosd(T3);
yM =fixPara.a3*cosd(T1).*sind(T3) - fixPara.d2*cosd(T1) + fixPara.a3*cosd(T2).*cosd(T3).*sind(T1);
zM =  fixPara.d1*ones(90,90,90) + fixPara.a3*cosd(T3).*sind(T2);
hold on
plot3(xM(:),-zM(:),yM(:),'.')