clear

use "/Users/Lan/Documents/GitHub/ps1-data-hitsukilan/build_data/input/rscfp2007.dta"

*** Variable generation ***

gen Inf = 1.1602

*All dollar variables in data have been inflation-adjusted to 2016 dollars using the "current methods" version of CPI-U-RS.
*Inflation information is from Bureau of Labor Statistics

rename income Income

gen earning = ( wageinc + 0.863 * bussefarminc)/Inf/1000

gen income = (wageinc + bussefarminc + intdivinc + ///
			kginc + ssretinc + transfothinc )/Inf/1000

gen wealth = networth/Inf/1000

*change unit: from dollar into thousand dollar

*** The end of variable generation ***

cd "/Users/Lan/Documents/GitHub/ps1-data-hitsukilan/build_data/output"

erase SCF_EIWdata.dta

save "/Users/Lan/Documents/GitHub/ps1-data-hitsukilan/build_data/output/SCF_EIWdata.dta"

cd "/Users/Lan/Documents/GitHub/ps1-data-hitsukilan/analysis/input"

erase SCF_EIWdata.dta

save "/Users/Lan/Documents/GitHub/ps1-data-hitsukilan/analysis/input/SCF_EIWdata.dta"
