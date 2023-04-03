@echo off
set /p IP=

copy /y hosts.sav hosts.out>nul

for /L %%i IN (1 1 10) do echo %IP% website%%i.com>>hosts.out

: настроить drweb, чтобы пропускал cmd на корректировку hosts

move /y hosts.out C:\Windows\System32\drivers\etc\hosts 

:: copy /y hosts.out C:\Windows\System32\drivers\etc\hosts 
:: del /q hosts.out

