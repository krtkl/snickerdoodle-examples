REM source the vivado settings file so we have access to
REM the ecosystem of applications
call c:\Xilinx\Vivado\2020.1\settings64.bat

REM launch vitis against the exported hardware package
vitis -workspace ./sdk

REM todo: script vitis application flow