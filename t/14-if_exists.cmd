@echo off

echo test

SET FILE=t\14-if_exists.cmd

IF EXIST %FILE% cp 14-if_exists.cmd 14-if_exists.cmd.bkp

IF NOT EXIST another_file 

touch another_file
