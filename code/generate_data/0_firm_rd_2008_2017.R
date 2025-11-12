# This script compiles and clean the data of the MESRI survey for survey at the firm level in France.
# We do it separatly for pre-post 2008 since the datasets are not the same.

# Load packages ----
library(data.table)
library(glue)
library(lubridate)

# Clean data 2008 - 2017 ----
## 2007 ----

db07 = fread(file.path(path_raw, "enqueteRD/2007/diff2007tot_def_diff.csv"))








# Draft ----
years <- 2007:2017
basic_cleaning = function(df, df_year){
  setnames(df, colnames(df), tolower(colnames(df)))
  df[, year := df_year]  
  return(df)
}

dt_list <- lapply(years, function(y) {
  # First guess
  f <- file.path(path_raw, glue("enqueteRD/{y}/diff{y}tot_def_diff.csv"))

  dt <- tryCatch(fread(file = f),
                 error = function(e) { message("Failed to read ", y, ": ", e$message); NULL })
  if (is.null(dt)) return(NULL)

  dt <- basic_cleaning(dt, y) 
  dt[, year := y]             
  dt
})

# Stack everything; use names and fill to allow differing columns
firmRD_stack <- rbindlist(dt_list, use.names = TRUE, fill = TRUE)

gc()

## Cleaning columns ----

colnames(firmRD_stack)

# Id var
list_var_id = c("entreprise","year","commune", "paysnom", "ent_code", "ent_nom","effectif", "cp", "ent_cp",
  "redressdi", "redresseffrepart", "redresseff", "dpt_no", "redress", "naf700",
  "groupe_fra", "groupe_etr", paste0("diff0", 7:9), paste0("diff", 10:17)
)

# Entreprise variables
list_var_entr = c(
  "siren", "pond", "ent_ville", "caht", "d_courante", "rem_cs", "frais_gen", "d_capital", "dird", "derd", "effrd", "budgetot", 
  "effrd_pp", "cherch_pp", "chercheur", "ape2", "code_rech2", "sect_rech2", "code_pub2", "sect_pub2",
  "innoprod", "innoproc", "brevet", "pinformat", "pbiotech", "pnanotech", "penvir", "pmater", "pshs",
  "centre_rech", "financ_pro","de_derd_fp",
  "redressrd","r_ress1","r_ress2", "r_ress3", "r_ress4", "totbrev", "pcent_fra","pcent_etr",
  "de_ens_sup_fp","de_cea_fp", "de_cnes_fp","de_cnrs_fp","de_onera_fp","de_aut_opu_fp","de_isbl_fp"
)

# Branch variables
list_branch_var = c(
 "bra_caht", "di_d_courante", "di_rem_cs", "di_frais_gen", "di_d_capital", "di_terrains", "di_materiel", "di_logiciel", 
 "di_immo_rd", "di_rech_fond", "di_rech_app", "di_devel" ,"de_derd", 
 "de_org_pub", "de_cea", "de_cnes", "de_cnrs", "de_onera", "de_aut_opu", "de_ens_sup", "de_isbl", 
 "de_entrep", "de_ent_gr", "de_fr_gr", "de_ent_gr_qs", "de_autres", "de_fr_ent", "de_aut_ent_qs",
 "de_etranger", "de_ent_etr", "de_etr_gr_ue", "de_etr_gr_hue", "de_etr_ent_ue", "de_etr_ent_hue", "de_org_int", "de_org_etr", "de_org_int_qs",
 "bra_budgetot",
 "bra_effrd", "r_etranger", "de_etranger", "di_dird" ,"bra_no", "bra_effectif",
 "r_tot_rech", "r_cifre", "r_aut_rech", "r_anr", "r_anvar", "r_ademe", "r_cea", "r_cnes", "r_cnrs", "r_inria",
 "r_av_anvar", "r_irsn", "r_av_serics", "r_dpac", "r_dpacs", "r_region", "r_isbl", "r_andra",
 "r_tot_ens", "r_ens_sup", "r_aut_ens", 
 "r_tot_ind", "r_serics", "r_aut_ind",
 "r_tot_def", "r_dga", "r_cea_dam", "r_aut_def", # military R&D spending
 "r_tot_ar_pub", "r_aut_opu_qs",
 "r_financ_pub",
 "r_entrep", "r_ent_gr", "r_inst_gr", "r_aut_ent", "r_org_pro", "r_ent_gr_qs", "r_aut_ent_qs",
 "r_etranger","r_etr_gr", "r_etr_gr_qs", "r_inst_etr", "r_aut_etr", "r_cee", "r_org_int", "r_org_int_qs", "r_org_etr",
 "bra_effrd_pp", "bra_cherch_pp", "bra_chercheur", "bra_technicien", "bra_ouvrier", "bra_adminis",
 "financ_pub", "r_financ_pro" ,"financ_aut"
)

# Department variables
list_dpt_var = c(
  "dpt_di_d_courante", "dpt_di_d_capital", "dpt_di_dird", "bra_effrd_pp", "dpt_chercheur", "dpt_technicien", "dpt_ouvrier", "dpt_adminis"
)

list_var = c(list_var_id,list_var_entr, list_branch_var, list_dpt_var)
# columns not found:  "di_d_dird" "de_public" "de_fr_org_pro" "r_tot_r" "r_tot_def_qs" "r_pub_ress1" "r_pub_ress2" 
# "r_pub_ress3" "r_pub_ress4" "redress_rd" "redressed_pp"]

# setdiff(colnames(firmRD_stack), list_var)

firmRD_stack = firmRD_stack[, ..list_var]
fwrite(firmRD_stack, file.path(path_temp, "firmRD_2008_2017.csv"))
