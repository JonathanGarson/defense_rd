# This script compiles and clean the data of the MESRI survey for survey at the firm level in France.

# Load packages ----
library(data.table)

# Load Data ----
firmRD = fread(file.path(path_raw, "enqueteRD/2016 - diff2016tot-def_diff/diff2016tot_def_diff.csv"))

