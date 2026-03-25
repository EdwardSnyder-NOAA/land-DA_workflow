prepend_path("MODULEPATH", os.getenv("modulepath_modulefiles"))

load(pathJoin("stack-oneapi", stack_oneapi_ver))
load(pathJoin("prod_util", prod_util_ver))

prepend_path("MODULEPATH", os.getenv("modulepath_pymodule"))
setenv("NDATE", os.getenv("ndate_path"))

load("python-ufs-land-da-wflow")

