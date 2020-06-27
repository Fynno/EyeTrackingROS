%%Kinematics of Arm (Variables)
syms theta1 theta2 theta3
syms d1 d2 d3

a_i = 0;
syms a_3
alpha1 = 90;
alpha2 = -90;
alpha3 = 0;

T_1 =[cos(theta1),-sin(theta1)*cosd(alpha1),sin(theta1)*sind(alpha1),a_i*cos(theta1);
    sin(theta1),cos(theta1)*cosd(alpha1),-cos(theta1)*sind(alpha1),a_i*sin(theta1);
    0,sind(alpha1), cosd(alpha1), d1;
    0, 0, 0, 1];

T_2 =[cos(theta2),-sin(theta2)*cosd(alpha2),sin(theta2)*sind(alpha2),a_i*cos(theta2);
    sin(theta2),cos(theta2)*cosd(alpha2),-cos(theta2)*sind(alpha2),a_i*sin(theta2);
    0,sind(alpha2), cosd(alpha2), d2;
    0, 0, 0, 1];

T_3 =[cos(theta3),-sin(theta3)*cosd(alpha3),sin(theta3)*sind(alpha3),a_3*cos(theta3);
    sin(theta3),cos(theta3)*cosd(alpha3),-cos(theta3)*sind(alpha3),a_3*sin(theta3);
    0,sind(alpha3), cosd(alpha3), 0;
    0, 0, 0, 1];

T_3_to_0 = T_1*T_2*T_3
%% Robot Visualisation
%%Kinematics of Arm
fixPara = struct('d1',0.25,'d2',0.3,'d3',0,'a1',0,'a2',0,'a3',0.35,'alpha1',90,'alpha2',-90,'alpha3',0);
baseTransform =[1,0,0,0;0,0,-1,0;0,1,0,0;0,0,0,1];
L(1) = Link('d', fixPara.d1, 'a', fixPara.a1, 'alpha', deg2rad(fixPara.alpha1));
L(2) = Link('d', fixPara.d2, 'a', fixPara.a2, 'alpha', deg2rad(fixPara.alpha2));
L(3) = Link('d', fixPara.d3, 'a', fixPara.a3, 'alpha', deg2rad(fixPara.alpha3));
robot = SerialLink(L,'base',baseTransform,'name','Right Arm');

%% Init
theta1 = 0;
theta2 = 0;
theta3 = 0;
q_ref = deg2rad([theta1,theta2,theta3]);
%% Animation
robot.plot(q_ref)


z = (0:0.01:0.5);
%y = (-0.4:0.01:0.5);
x = ones(1,length(z))*0.2;
y = ones(1,length(z))*-0.1;

for i = 1:length(z)
   q = calcJointCord([x(i);y(i);z(i)],fixPara);
   robot.animate(deg2rad(q))
end

%% Inverse kinematics by Jacobian (WIP)

%delta x = J(q)*delta q
q_start = [0,0,0];
robot.plot(deg2rad(q_start))
q=q_start
%%
dq = pinv(calcJacobian(q,fixPara))*[0;0;0.1]
q = q + dq.'
robot.plot(deg2rad(q))
     