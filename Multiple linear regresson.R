y=c(16.68,11.5,12.03,14.88,13.75,18.11,8,17.83,79.2,21,13.5,19.75,24,
    29,15.3,19,9.5,35.1,17.9,52.32,18.75,19.83,10.75,21.5,40.33)
x1=c(7,3,3,4,6,7,2,7,30,10,4,6,9,10,6,7,3,17,10,26,9,8,4,5,16)
x2=c(560,220,340,80,150,330,110,210,1460,215,255,462,448,776,220,132,36,770,140,810,450,635,150,605,
     668)


model=lm(y~x1+x2)
summary(model)

#coefficient of regression coefficients
model$coefficients

#confidence interval for regression coefficient and sigma
confint(model,level=0.95)

#coefficient of determination
summary(model)$r.squared

#adjusted coefficient of determination
summary(model)$adj.r.squared

#confidence interval of sigma hat
sigma_sq_hat=sum(model$residuals^2)/df.residual(model)
sigma_sq_hat

lower_ci=(25-df.residual(model))*sigma_sq_hat/qchisq(0.975,25-df.residual(model))
upper_ci=(25-df.residual(model))*sigma_sq_hat/qchisq(0.025,25-df.residual(model))

print(paste("the 95% confidence interval for sigmasq is ",lower_ci,upper_ci))


