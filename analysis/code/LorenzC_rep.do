********** HW1 **********

clear

use "/Users/Lan/Documents/GitHub/ps1-data-hitsukilan/analysis/input/SCF_EIWdata.dta"

cd "/Users/Lan/Documents/GitHub/ps1-data-hitsukilan/analysis/output"

cap erase Earning_LC.jpg
cap erase Income_LC.jpg
cap erase Wealth_LC.jpg
*** Lorenz Curve ***

lorenz estimate earning [weight=wgt], notable
lorenz graph, noci ytitle(Earning share) ///
              title(Lorenz Curve of Earning in 2007) ///
			  legend(off) 	///
			  saving(Earning_LC.jpg)

lorenz estimate income [weight=wgt], notable
lorenz graph, noci ytitle(Income share)	 ///
              title(Lorenz Curve of Income in 2007)	 ///
			  legend(off)	///
			  saving(Income_LC.jpg)


lorenz estimate wealth [weight=wgt], notable
lorenz graph, noci ytitle(Wealth share) ///
              title(Lorenz Curve of Wealth in 2007) ///
			  legend(off)	///
			  saving(Wealth_LC.jpg)

*** The end of Lorenz Curve ***

