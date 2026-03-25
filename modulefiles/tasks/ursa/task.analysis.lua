prepend_path("MODULEPATH", os.getenv("modulepath_modulefiles"))

load(pathJoin("stack-oneapi", stack_oneapi_ver))
load(pathJoin("stack-intel-oneapi-mpi", stack_intel_oneapi_mpi_ver))
load(pathJoin("intel-oneapi-mkl", intel_oneapi_mkl_ver))
load(pathJoin("prod_util", prod_util_ver))
load(pathJoin("netcdf-c", netcdf_c_ver))

setenv("NDATE", os.getenv("ndate_path"))
prepend_path("MODULEPATH", os.getenv("modulepath_pymodule"))
prepend_path("APPTAINERENV_LD_LIBRARY_PATH", "/opt/intel/oneapi/2024.2/lib")
prepend_path("APPTAINERENV_LD_LIBRARY_PATH", "/scratch3/NCEPDEV/nems/Edward.Snyder/ss-192-cont/landda/land-DA_workflow/lib64")

load("python-ufs-land-da-wflow")


