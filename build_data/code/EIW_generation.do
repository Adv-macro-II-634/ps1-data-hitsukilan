clear

use "/Users/Lan/Documents/GitHub/ps1-data-hitsukilan/build_data/input/rscfp2007.dta"

*** Variable generation ***

gen Inf = 1.1602

*All dollar variables in data have been inflation-adjusted to 2016 dollars using the "current methods" version of CPI-U-RS.
*Inflation information is from Bureau of Labor Statistics

gen earning = ( wageinc + 0.863 * bussefarminc)/Inf

gen inc = (wageinc + bussefarminc + intdivinc + kginc + ssretinc + transfothinc )/Inf

gen wealth = networth/Inf

*** The end of variable generation ***

save "/Users/Lan/Documents/GitHub/ps1-data-hitsukilan/build_data/output/SCF_EIWdata.dta"
