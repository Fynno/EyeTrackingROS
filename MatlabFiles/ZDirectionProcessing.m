cutStartProp = 3000;
cutEndProp = 5000;

cutStartInt = 5000;
cutEndInt = 7000;

subplot(1,2,1)
time1 = HeadData2(cutStartProp:cutEndProp,1) - HeadData2(cutStartProp,1);
plot(time1,HeadData2(cutStartProp:cutEndProp,2))
title("Proportional control of the distance")
xlabel('time [s]')
ylabel('z [m]')
ylim([0.3 1.2])

subplot(1,2,2)
time2 = Integral(cutStartInt:cutEndInt,1)-Integral(cutStartInt,1);
plot(time2,Integral(cutStartInt:cutEndInt,2))
title("Integral control of the distance")
xlabel('time [s]')
ylabel('z [m]')
ylim([0.3 1.2])