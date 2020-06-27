%% Delta Z along the z-axis
[alphabeta,error] = meshgrid(2:1:30,0.1:0.2:4);
deltaZ = 0.1*((1/2)*tand(alphabeta).^(-1) -(1/2)*tand(alphabeta+error).^(-1));

surf(alphabeta,error,abs(deltaZ));
colorbar
caxis([0 2])
ax = gca;
ax.ZDir = 'reverse'

xlabel('\alpha [ ^\circ ]');
ylabel('\Delta\alpha [ ^\circ ]');
zlabel('\Delta z [m]');
% matlab2tikz('width','12cm','height','6cm');
%% Calculate alpha and beta for all (x,z)
[x,z] = meshgrid(-1:0.1:1,0.1:0.1:2);
alpha = atand((0.1/2-x).*(z.^-1));
beta = atand((x+0.1/2).*(z.^-1));
%% Delta X for complete FOV
deltaAlpha = 1;
deltaBeta = 1;
deltaX_pp = abs(detectX(alpha,beta)-detectXError(alpha,beta,deltaAlpha,deltaBeta));
deltaX_mp = abs(detectX(alpha,beta)-detectXError(alpha,beta,deltaAlpha,-deltaBeta));
deltaX_mm = abs(detectX(alpha,beta)-detectXError(alpha,beta,-deltaAlpha,-deltaBeta));
deltaX1 = max(deltaX_pp,deltaX_mp);
deltaX = min(max(deltaX1, deltaX_mm),0.3);

surf(x,z,deltaX);
colorbar
caxis([0 0.1])
ax = gca;
ax.ZDir = 'reverse' 

xlabel('x [ m ]');
ylabel('z [ m ]');
zlabel('\Delta x [m]');
% matlab2tikz('width','12cm','height','6cm');
%% Vector approach with same result:
% z*[sind(beta) cosd(beta)]-[a/2 0] = z*[-sind(alpha) cosd(alpha)]+[a/2 0]
x_calc2 = -0.1*sind(alpha).*((cosd(alpha).*tand(beta)+sind(alpha)).^-1) + 0.1/2;
x_calcWithError = -0.1*sind(alpha+deltaAlpha).*((cosd(alpha+deltaAlpha).*tand(beta+deltaAlpha)+sind(alpha+deltaAlpha)).^-1) + 0.1/2;
x_delta = abs(x_calc2 -x_calcWithError);
surf(x,z,x_delta);
%% Delta z for complete FOV
deltaAlpha= -1;
deltaBeta = -1;
deltaZ_pp = abs(detectDistance(alpha,beta)-detectDistanceError(alpha,beta,deltaAlpha,deltaBeta));
deltaZ_pm = abs(detectDistance(alpha,beta)-detectDistanceError(alpha,beta,-deltaAlpha,deltaBeta));
deltaZ_mm = abs(detectDistance(alpha,beta)-detectDistanceError(alpha,beta,-deltaAlpha,-deltaBeta));
deltaZ1 = max(deltaZ_pp,deltaZ_pm);
deltaZ = min(max(deltaZ1,deltaZ_mm),0.1);

surf(x,z,abs(deltaZ));
colorbar
caxis([0 0.1])
ax = gca;
ax.ZDir = 'reverse'
xlabel('x [ m ]');
ylabel('z [ m ]');
zlabel('\Delta z [m]');
% matlab2tikz('width','12cm','height','6cm');