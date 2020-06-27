%Jacobian
%x = d2*sin(theta1) - a_3*sin(theta1)*sin(theta3) + a_3*cos(theta1)*cos(theta2)*cos(theta3)
%y = a_3*cos(theta1)*sin(theta3) - d2*cos(theta1) + a_3*cos(theta2)*cos(theta3)*sin(theta1)
%z = d1 + a_3*cos(theta3)*sin(theta2)


function J = calcJacobian(q,para)
J = [para.d2*cosd(q(1))-para.a3*cosd(q(1))*sind(q(3))-para.a3*sind(q(1))*cosd(q(2))*cosd(q(3)),-para.a3*cosd(q(1))*sind(q(2))*cosd(q(3)),-para.a3*sind(q(1))*cosd(q(3))-para.a3*cosd(q(1))*cosd(q(2))*sind(q(3));
    -para.a3*sind(q(1))*sind(q(3))-para.d2*cosd(q(1))+para.a3*cosd(q(2))*cosd(q(3))*cosd(q(1)),-para.a3*sind(q(2))*cosd(q(3))*sind(q(1)),para.a3*cosd(q(1))*cosd(q(3))-para.a3*cosd(q(2))*sind(q(3))*sind(q(1));
    0 , para.a3*cosd(q(3))*cosd(q(2)), -para.a3*sind(q(3))*sind(q(2))];


end