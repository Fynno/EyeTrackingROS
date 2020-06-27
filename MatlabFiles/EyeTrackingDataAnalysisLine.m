windowSize = 3;
orderOfMedfilt = 3;
start = 1;
endValue =250;

cutStart = 130;
cutEnd = 10;

b = (1/windowSize)*ones(1,windowSize);
a = 1;
x = filter(b,a,bagfileworldcoordinates(start:endValue,4));
y = filter(b,a,bagfileworldcoordinates(start:endValue,3));
x = medfilt1(x,orderOfMedfilt);
y = medfilt1(y,orderOfMedfilt);
% plot(x(cutStart:end-cutEnd),y(cutStart:end-cutEnd))
%%
fitResults1 = polyfit(x(cutStart:end-cutEnd),y(cutStart:end-cutEnd),1);
Yfit1 = polyval(fitResults1,x(cutStart:end-cutEnd));
resid1 = y(cutStart:end-cutEnd) - Yfit1(:);
dev = std(resid1)
subplot(1,2,1)
plot(x(cutStart:end-cutEnd),resid1,'.')
title('With object to focus')
xlabel('x [m]')
ylabel('residuals [m]')
xlim([-0.2 0.2])
xtickangle(90)
ylim([-0.02 0.02])