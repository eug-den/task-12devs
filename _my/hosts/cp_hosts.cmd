@echo off
set /p IP=

copy /y hosts.sav hosts.out>nul

for /L %%i IN (1 1 10) do echo %IP% website%%i.com>>hosts.out

: настроить drweb, чтобы пропускал cmd на корректировку hosts
copy /y hosts.out C:\Windows\System32\drivers\etc\hosts 

ping website9.com
