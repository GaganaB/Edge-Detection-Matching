%building mex function
%A MEX-file is a function, created in MATLAB, that calls a C, C++, or Fortran subroutine. 
mex ex.c %for example

close(setdiff(findall(0, 'type', 'figure'), currentFigures))
clear mex
delete *.mexw32

%database connectivity
conn = database(inst,codegen,1234)
%native drivers can also be used

%importing data through mysql
sqlquery = 'select * from database';
curs = exec(conn,sqlquery);

%selecting data 
setdbprefs('Errorhandling','report');
curs = exec(conn,'select * invalidtablename')

%to close the connection
close(conn);

delete path\hello.jpg
clear all
load old_workspace
delete old_workspace.mat
delete path\cleanup.m
cd ..
rmdir('path','s');
