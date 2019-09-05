********** HW1 **********

clear

use "/Users/Lan/Documents/GitHub/ps1-data-hitsukilan/analysis/input/SCF_EIWdata.dta"

cd "/Users/Lan/Documents/GitHub/ps1-data-hitsukilan/analysis/output"

log using Table2, name(Table2) replace

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
mat list total

***top 1%/lowest40%***
_pctile earning [aweight=wgt],p(40,99)


*location of mean (%) & mean/median

tabstat earning income wealth [aweight=wgt], statistics(mean median)

pctile earning_pct = earning [aweight=wgt], nq(100) gen(percent)
pctile income_pct =income [aweight=wgt], nq(100)
pctile wealth_pct = wealth [aweight=wgt], nq(100)

list percent earning_pct income_pct wealth_pct in 1/99

***The end of Table 2 ***

log close Table2










