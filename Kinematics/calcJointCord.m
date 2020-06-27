function q = calcJointCord(P_world,parameters)
t3 = 90 - acosd(((norm(P_world-[0;0;parameters.d1])^2)-(parameters.d2^2)-(parameters.a3^2))/(-2*parameters.d2*parameters.a3));
t2 = asind((P_world(3)-parameters.d1)/(parameters.a3*cosd(t3)));
P_t1_0 = calcRotMatr(0,parameters.d1,parameters.a1,parameters.alpha1)*calcRotMatr(t2,parameters.d2,parameters.a2,parameters.alpha2)*calcRotMatr(t3,parameters.d3,parameters.a3,parameters.alpha3)*[0;0;0;1];
t1 = atan2d(P_world(2),P_world(1))-atan2d(P_t1_0(2),P_t1_0(1));
q = [t1 t2 t3];
end