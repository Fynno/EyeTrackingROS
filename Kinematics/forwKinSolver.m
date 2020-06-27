function p = forwKinSolver(q,parameters)
T1 =calcRotMatr(q(1),parameters.d1,parameters.a1,parameters.alpha1);
T2 =calcRotMatr(q(2),parameters.d2,parameters.a2,parameters.alpha2);
T3 =calcRotMatr(q(3),parameters.d3,parameters.a3,parameters.alpha3);
p=T1*T2*T3*[0;0;0;1];
end