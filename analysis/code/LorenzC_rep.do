clear

use "/Users/Lan/Documents/GitHub/ps1-data-hitsukilan/analysis/input/SCF_EIWdata.dta"

*** Lorenz Curve ***
cd "/Users/Lan/Documents/GitHub/ps1-data-hitsukilan/analysis/output"

lorenz estimate earning [weight=wgt]
lorenz graph, aspectratio(1) saving(Earning_LC)

lorenz estimate income [weight=wgt]
lorenz graph, aspectratio(1) saving(Income_LC)

lorenz estimate wealth [weight=wgt]
lorenz graph, aspectratio(1) saving (Wealth_LC)

*** The end of Lorenz Curve ***
