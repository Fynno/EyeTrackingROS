windowSize = 3;
orderOfMedfilt = 3;
start = 1;
endValue =800;

b = (1/windowSize)*ones(1,windowSize);
a = 1;
x = filter(b,a,bagfileworldcoordinates(start:endValue,4));
y = filter(b,a,bagfileworldcoordinates(start:endValue,3));
x = medfilt1(x,orderOfMedfilt);
y = medfilt1(y,orderOfMedfilt);

% figure
subplot(3,2,1)

plot(x,y)
hold on
xlim([-0.15 0.15])
ylim([-0.2 0.1])
xtickangle(90)
%Circle
r = 0.0825;
xC = 0;
yC = -0.0825;
th = 0:pi/50:2*pi;
xunit = r * cos(th) + xC;
yunit = r * sin(th) + yC;
plot(xunit, yunit, '--','Color','Black');
hold off

%Triangle
% line([0;-0.1;0.1;0],[0;-0.15;-0.15;0],'linestyle','--');

xlabel('x [m]')
ylabel('y [m]')
title('With object to focus')

subplot(3,2,3)
theta = medfilt1(bagfileworldcoordinates(start:endValue,5),orderOfMedfilt);
time = (bagfileworldcoordinates(start:endValue,1) - bagfileworldcoordinates(start,1))*10^(-9);
plot(time,theta)
xlabel('time [s]')
ylabel('\gamma [rad]')

subplot(3,2,5)
phi = medfilt1(bagfileworldcoordinates(start:endValue,6),orderOfMedfilt);
plot(time,phi)
xlabel('time [s]')
ylabel('\beta [rad]')

%% Second half of plot
windowSize = 3;
orderOfMedfilt = 3;
start = 1;
endValue =800;

b = (1/windowSize)*ones(1,windowSize);
a = 1;
x = filter(b,a,bagfileworldcoordinates(start:endValue,4));
y = filter(b,a,bagfileworldcoordinates(start:endValue,3));
x = medfilt1(x,orderOfMedfilt);
y = medfilt1(y,orderOfMedfilt);

subplot(3,2,2)
plot(x,y)
hold on
xlim([-0.15 0.15])
ylim([-0.2 0.1])
xtickangle(90)
%Circle
r = 0.0825;
xC = 0;
yC = -0.0825;
th = 0:pi/50:2*pi;
xunit = r * cos(th) + xC;
yunit = r * sin(th) + yC;
plot(xunit, yunit, '--','Color','Black');
hold off


%Triangle
% line([0;-0.1;0.1;0],[0;-0.15;-0.15;0],'linestyle','--');

xlabel('x [m]')
ylabel('y [m]')
title('No object to focus')
subplot(3,2,4)
theta = medfilt1(bagfileworldcoordinates(start:endValue,5),orderOfMedfilt);
time = (bagfileworldcoordinates(start:endValue,1) - bagfileworldcoordinates(start,1))*10^(-9);
plot(time,theta)
xlabel('time [s]')
ylabel('\gamma [rad]')

subplot(3,2,6)
phi = medfilt1(bagfileworldcoordinates(start:endValue,6),orderOfMedfilt);
plot(time,phi)
xlabel('time [s]')
ylabel('\beta [rad]')
