@echo off

:: Comment1
echo Testing line logger
REM Comment2
call t/10-call_command_subcall.cmd
set VALUE=6
set GOTOLABEL=NO
set VALUE=123456
echo %VALUE:~-2%

for %%m in (1,3,6) do if %%m GEQ %VALUE% set GOTOLABEL=YES

If %GOTOLABEL% EQU YES goto anotherlabel

dir

:anotherlabel


If 130 GTR 14 goto label

rm file1

:label

cp file1 file2


