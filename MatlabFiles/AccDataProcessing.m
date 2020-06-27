clear all
SP = readtable('SP_01.txt','Delimiter',{',', '='},'MultipleDelimsAsOne', true);
SR =  readtable('SR_02.txt','Delimiter',{',', '='},'MultipleDelimsAsOne', true);
FPB =  readtable('FPB_01.txt','Delimiter',{',', '='},'MultipleDelimsAsOne', true);
FPF =  readtable('FPF_01.txt','Delimiter',{',', '='},'MultipleDelimsAsOne', true);

%% Formatting the data 
scaling_Vector = [1/16384;pi/(131*180);1];

SP.Var1 =[];
SP.Var3 =[];
SP.Var5 =[];
SP.Var7 =[];
SP.Var9 =[];
SP.Var11 =[];
SP.Var13 =[]; 
SPA = table2array(SP);
SPA(:,1:3)= SPA(:,1:3)*scaling_Vector(1);
SPA(:,4:6)= SPA(:,4:6)*scaling_Vector(2);

SR.Var1 =[];
SR.Var3 =[];
SR.Var5 =[];
SR.Var7 =[];
SR.Var9 =[];
SR.Var11 =[];
SR.Var13 =[];
SRA = table2array(SR);
SRA(:,1:3)= SRA(:,1:3)*scaling_Vector(1);
SRA(:,4:6)= SRA(:,4:6)*scaling_Vector(2);

FPB.Var1 =[];
FPB.Var3 =[];
FPB.Var5 =[];
FPB.Var7 =[];
FPB.Var9 =[];
FPB.Var11 =[];
FPB.Var13 =[];
FPBA = table2array(FPB);
FPBA(:,1:3)= FPBA(:,1:3)*scaling_Vector(1);
FPBA(:,4:6)= FPBA(:,4:6)*scaling_Vector(2);

FPF.Var1 =[];
FPF.Var3 =[];
FPF.Var5 =[];
FPF.Var7 =[];
FPF.Var9 =[];
FPF.Var11 =[];
FPF.Var13 =[];
FPFA = table2array(FPF);
FPFA(:,1:3)= FPFA(:,1:3)*scaling_Vector(1);
FPFA(:,4:6)= FPFA(:,4:6)*scaling_Vector(2);
%%
subplot(4,1,1)
xlabel('t [ms]')
ylabel('a [g]/ \omega [rad/s]')
xlim([600 5000])
ylim([-2 2])
hold on
plot(SPA(:,7),SPA(:,1));
plot(SPA(:,7),SPA(:,2));
plot(SPA(:,7),SPA(:,3));
plot(SPA(:,7),SPA(:,4));
plot(SPA(:,7),SPA(:,5));
plot(SPA(:,7),SPA(:,6));
legend('ax','ay','az','\omega x','\omega y','\omega z')
hold off

subplot(4,1,2)
xlabel('t [ms]')
ylabel('a [g]/ \omega [rad/s]')
xlim([600 5000])
ylim([-2 2])
hold on
plot(SRA(:,7),SRA(:,1));
plot(SRA(:,7),SRA(:,2));
plot(SRA(:,7),SRA(:,3));
plot(SRA(:,7),SRA(:,4));
plot(SRA(:,7),SRA(:,5));
plot(SRA(:,7),SRA(:,6));
hold off

subplot(4,1,3)
xlabel('t [ms]')
ylabel('a [g]/ \omega [rad/s]')
xlim([600 5000])
ylim([-5 5])
hold on
plot(FPBA(:,7),FPBA(:,1));
plot(FPBA(:,7),FPBA(:,2));
plot(FPBA(:,7),FPBA(:,3));
plot(FPBA(:,7),FPBA(:,4));
plot(FPBA(:,7),FPBA(:,5));
plot(FPBA(:,7),FPBA(:,6));
hold off

subplot(4,1,4)
xlabel('t [ms]')
ylabel('a [g]/ \omega [rad/s]')
xlim([600 5000])
ylim([-5 5])
hold on
plot(FPFA(:,7),FPFA(:,1));
plot(FPFA(:,7),FPFA(:,2));
plot(FPFA(:,7),FPFA(:,3));
plot(FPFA(:,7),FPFA(:,4));
plot(FPFA(:,7),FPFA(:,5));
plot(FPFA(:,7),FPFA(:,6));
hold off
%% How fast?
diff = 0;
time = 0;
for c = 2:65
    diff =(t(c)-t(c-1))+diff
    time = diff/64 
end
%%
matlab2tikz('width','14cm','height','12cm');