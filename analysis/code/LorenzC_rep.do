********** HW1 **********

clear

use "/Users/Lan/Documents/GitHub/ps1-data-hitsukilan/analysis/input/SCF_EIWdata.dta"

cd "/Users/Lan/Documents/GitHub/ps1-data-hitsukilan/analysis/output"

cap erase Earning_LC.gph
cap erase Income_LC.gph
cap erase Wealth_LC.gph
*** Lorenz Curve ***

lorenz estimate earning [weight=wgt], notable
lorenz graph, noci ytitle(Earning share) ///
              title(Lorenz Curve of Earning in 2007) ///
			  legend(off) 	///
			  saving(Earning_LC)

lorenz estimate income [weight=wgt], notable
lorenz graph, noci ytitle(Income share)	 ///
              title(Lorenz Curve of Income in 2007)	 ///
			  legend(off)	///
			  saving(Income_LC)


lorenz estimate wealth [weight=wgt], notable
lorenz graph, noci ytitle(Wealth share) ///
              title(Lorenz Curve of Wealth in 2007) ///
			  legend(off)	///
			  saving(Wealth_LC)

*** The end of Lorenz Curve ***

