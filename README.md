# BMP-kinetics-paper-2022
Public repository with data, analysis, and manuscript for the 2022 paper evaluating kinetic data from BMP tests. 

# For more details
See the following paper for a description of this work: (check back soon, currently under review).

# Description of files
## `data`
Directory contains data files as comma-separated text files.
See `scripts/load.R` for an example of reading into R.

* SMP.csv - specific methane production (SMP) (`cvCH4`, mL methane per g substrate volatile solids) over time (`time.d`, days) by bottle.
* kinetics.csv - kinetic results for each set of 3 (sometimes 2) bottles.
* kin_summ.csv - a summary of kinetic results similar to Table 1 in the paper but with more variables and parameter extraction approaches.

## `scripts`
Contains R scripts for generating the plots in `plots`.
Run `man.R` in R in a local copy of this repository to recreate plots.

## `plots`
Contains two pdf files with SMP and methane production rate for all bottles.
