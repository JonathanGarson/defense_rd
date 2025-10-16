# config_template.R - Template for local configuration
# 
# SETUP INSTRUCTIONS:
# 1. Copy this file and rename it to config.R
# 2. Replace the path below with your Dropbox folder path
# 3. Never commit config.R to Git

# Base Dropbox path
dropbox_base <- "REPLACE_WITH_YOUR_DROPBOX_PATH"  # e.g., "~/Dropbox/my_project_data"

# Data paths
path_raw <- file.path(dropbox_base, "raw")
path_temp <- file.path(dropbox_base, "temp")
path_final <- file.path(dropbox_base, "final")