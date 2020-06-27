function x = detectXError(alpha,beta,DeltaAlpha,DeltaBeta)

x = 0.1*(1/2 - tand(alpha+DeltaAlpha).*((tand(alpha+DeltaAlpha)+tand(beta+DeltaBeta)).^(-1)))

end