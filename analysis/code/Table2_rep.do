*** Table 2 Concentration and Skewness ***

*Gini coefficient, coefficient of variantion, variance of the logs
ainequal earning[aweight=wgt], cov sdl
mat aa = r(b)
ainequal income[aweight=wgt], cov sdl
mat bb = r(b)
ainequal wealth[aweight=wgt], cov sdl
mat cc= r(b)

mat total = [aa,bb,cc]
mat colname total = earning income wealth

***top 1%/lowest40%***
pctile earning [aweight=wgt],p(40,99)


*location of mean (%)



*mean/median

tabstat earning income wealth [aweight=wgt], statistics(mean median p99)
