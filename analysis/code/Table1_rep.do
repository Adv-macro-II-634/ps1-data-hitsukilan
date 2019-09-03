*** Table 1 Percentile Analysis ***

tabstat earning income wealth [aweight=wgt],s(min p1 p5 p10 p90 p95 p99 max) c(s)

pctile earning_pct = earning [aweight=wgt], nq(5) gen (percentile)
pctile income_pct = income [aweight=wgt], nq(5) 
pctile wealth_pct = wealth [aweight=wgt], nq(5) 

list percentile earning_pct income_pct wealth_pct in 1/4, sep(0)

*** The end of Table 1 ***
