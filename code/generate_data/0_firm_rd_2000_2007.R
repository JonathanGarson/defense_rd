# This script compiles and clean the data of the MESRI survey for survey at the firm level in France.
# We do it separatly for pre-post 2008 since the datasets are not the same.

# Load packages ----
library(data.table)
library(glue)
library(lubridate)

# Clean data 2000 - 2006 ----

basic_cleaning = function(df){
  setnames(df, colnames(df), tolower(colnames(df)))
  return(df)
}

df_merge <- function(year, path = path_raw, key_col = "NO_REF") {
  y_short <- substr(year, 3, 4)

  # Read data
  basent <- read.csv(glue("{path}/enqueteRD/{year}d/basent{y_short}.csv"))
  branche <- read.csv(glue("{path}/enqueteRD/{year}d/bran{y_short}.csv"))
  region <- read.csv(glue("{path}/enqueteRD/{year}d/breg{y_short}.csv"))
  
  # Merge using data.table syntax
  merged <- merge(basent, branche, by = key_col, all.x = TRUE)
  merged <- merge(merged, region, by = key_col, all.x = TRUE)
  
  merged = as.data.table(merged)

  return(merged)
}

firmRD <- rbindlist(
  lapply(2001:2006, function(year) {
    df <- df_merge(year,key_col = "NO_REF")
    df[, year := year]  # Add year column
    return(df)
  }),
  fill = TRUE  # Handle missing columns across years
)

firmRD = basic_cleaning(firmRD)

drop_y_cols <- unique(grep(pattern = "\\.y$", colnames(firmRD), value = TRUE))
firmRD[, (drop_y_cols) := NULL]
# Clean in the merging function, easier and cleaner
rename_x_cols <- unique(grep(pattern = "\\.x$", colnames(firmRD), value = TRUE))
new_names <- gsub("\\.x$", "", rename_x_cols)
setnames(firmRD, rename_x_cols, new_names)
