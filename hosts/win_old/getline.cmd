@echo off
:: �����: getline [N_������=1] [��� �����=D:\_devops\ip]
:: ������ � # �� ���������

if "%1"=="" (
  set num=1
) else  (
  set num=%1
)

if "%2"=="" (
  set ip_file=ip
) else  (
  set ip_file=%2
)

setlocal EnableDelayedExpansion
set count=0
for /f "eol=# usebackq tokens=* delims=" %%i in ("%ip_file%") do set /a count=!count!+1 & if %num% == !count! set ip=%%i 

if "%ip%" neq "" echo %ip%

