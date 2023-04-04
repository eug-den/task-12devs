@echo off
:: generate hosts file for access virtual nginx web serevers
set IP=192.168.0.101

IF NOT EXIST hosts.sav COPY C:\Windows\System32\drivers\etc\hosts hosts.sav>nul
copy /y hosts.sav hosts.out>nul

for /L %%i IN (0 1 10) do echo %IP% website%%i.com>>hosts.out

:: настроить drweb, чтобы пропускал cmd на корректировку hosts
move /y hosts.out C:\Windows\System32\drivers\etc\hosts 
