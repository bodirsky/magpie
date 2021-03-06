# |  (C) 2008-2019 Potsdam Institute for Climate Impact Research (PIK)
# |  authors, and contributors see CITATION.cff file. This file is part
# |  of MAgPIE and licensed under AGPL-3.0-or-later. Under Section 7 of
# |  AGPL-3.0, you are granted additional permissions described in the
# |  MAgPIE License Exception, version 1.0 (see LICENSE file).
# |  Contact: magpie@pik-potsdam.de


##########################################################
#### Script to MAgPIE test runs ####
##########################################################

library(lucode)
source("scripts/start_functions.R")
source("scripts/performance_test.R")
source("config/default.cfg")

#set defaults
codeCheck <- FALSE

buildInputVector <- function(regionmapping   = "h11",
                             project_name    = "isimip_rcp",
                             climatescen_name= "rcp2p6",
                             co2             = "noco2",
                             climate_model   = "IPSL_CM5A_LR",
                             resolution      = "h200",
                             archive_rev     = "24",
                             madrat_rev      = "3.3",
                             validation_rev  = "3.3",
                             additional_data = "additional_data_rev3.16.tgz") {
  mappings <- c(h11="8a828c6ed5004e77d1ba2025e8ea2261",
                h12="690d3718e151be1b450b394c1064b1c5",
                mag="c30c1c580039c2b300d86cc46ff4036a")
  archive_name=paste(project_name,climate_model,climatescen_name,co2,sep="-")
  archive <- paste0(archive_name, "_rev", archive_rev, "_", resolution, "_", mappings[regionmapping], ".tgz")
  madrat  <- paste0("magpie_", mappings[regionmapping], "_rev", madrat_rev, ".tgz")
  validation  <- paste0("validation_", mappings[regionmapping], "_rev", validation_rev, ".tgz")
  return(c(archive,madrat,validation,additional_data))
}


### Single runs ###
#general settings
cfg$gms$c_timesteps <- 11
cfg$gms$s15_elastic_demand <- 1

cfg$title <- "CEMICS2_SSP2_RCP45"
cfg<-lucode::setScenario(cfg,"SUSTAg2")
cfg$force_download <- TRUE
cfg$input <- buildInputVector()
cfg$input <- buildInputVector(co2="co2",climatescen_name="rcp4p5")
cfg$gms$c56_pollutant_prices <- "SSPDB-SSP2-45-REMIND-MAGPIE"
cfg$gms$c60_2ndgen_biodem    <- "SSPDB-SSP2-45-REMIND-MAGPIE"
cfg$recalibrate <- TRUE
start_run(cfg=cfg,codeCheck=codeCheck)

cfg$title <- "CEMICS2_SSP2_RCP26"
cfg<-lucode::setScenario(cfg,"SUSTAg2")
cfg$force_download <- TRUE
cfg$input <- buildInputVector()
cfg$input <- buildInputVector(co2="co2",climatescen_name="rcp2p6")
cfg$gms$c56_pollutant_prices <- "SSPDB-SSP2-26-REMIND-MAGPIE"
cfg$gms$c60_2ndgen_biodem    <- "SSPDB-SSP2-26-REMIND-MAGPIE"
cfg$recalibrate <- TRUE
start_run(cfg=cfg,codeCheck=codeCheck)
