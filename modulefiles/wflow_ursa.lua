help([[
This module loads python environement for running the land-DA workflow on
the NOAA RDHPC machine Ursa
]])

whatis([===[Loads libraries needed for running the land-DA workflow on Ursa ]===])

load("rocoto")

prepend_path("MODULEPATH","/scratch3/NCEPDEV/nems/Edward.Snyder/ss-192-cont/landda/modulefiles")
load("python-ufs-land-da-wflow")

