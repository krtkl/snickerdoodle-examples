REM source the vivado settings file so we have access to
REM the ecosystem of applications
call c:\Xilinx\Vivado\2020.1\settings64.bat

rmdir /S /Q project
mkdir project

REM call vivado in batch mode calling the create_project.tcl
REM script.  this will open the GUI and build up the project
REM and package the IP for us.
vivado -mode batch -source .\scripts\create_project.tcl

