REM source the vivado settings file so we have access to
REM the ecosystem of applications
call c:\Xilinx\Vivado\2018.2\settings64.bat

REM create a place for the project to go
rmdir /q /s project
mkdir project

REM call vivado in batch mode calling the create_project.tcl
REM script.  this will open the GUI and build up the project
REM and package the IP for us.
vivado -mode batch -source .\scripts\create_project.tcl
