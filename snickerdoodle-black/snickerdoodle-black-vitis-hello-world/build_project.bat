REM source the vivado settings file so we have access to
REM the ecosystem of applications
call c:\Xilinx\Vivado\2020.1\settings64.bat

rmdir /S /Q project
mkdir project

REM call vivado in batch mode calling the create_project.tcl
REM script.  build the project, then export the resulting
REM hardware package to the ./sdk folder for vitis to open
vivado -mode batch -source .\scripts\build_project.tcl

REM launch vitis against the exported hardware package
vitis -workspace ./sdk

REM todo: script vitis application flow