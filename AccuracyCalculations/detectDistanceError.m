function z = detectDistanceError(alpha,beta,DeltaAlpha,DeltaBeta)

z = 0.1*((tand(alpha+DeltaAlpha)+tand(beta+DeltaBeta)).^(-1));

end