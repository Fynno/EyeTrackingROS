function x = detectX(alpha,beta)

x = 0.1*(1/2 - tand(alpha).*((tand(alpha)+tand(beta)).^(-1)))

end