echo off
SETLOCAL ENABLEDELAYEDEXPANSION
set nameSpace="YOURNAMESPACEGOESHERE"
SET count=1
FOR /F "tokens=* USEBACKQ" %%F IN (`kubectl get pod -n %nameSpace%`) DO (
  SET var!count!=%%F
  SET /a count=!count!+1
)

echo 2 - %var2%
echo 3 - %var3%
echo 4 - %var4%
echo 5 - %var5%
echo 6 - %var6%
echo 7 - %var7%
echo 8 - %var8%
echo 9 - %var9%
echo 10 - %var10%
echo 11 - %var11%
echo:

echo Digite o numero do POD que vc deseja visualizar o LOG:
SET /p var=
if %var% EQU 2 goto processo2
if %var% EQU 3 goto processo3
if %var% EQU 4 goto processo4
if %var% EQU 5 goto processo5
if %var% EQU 6 goto processo6
if %var% EQU 7 goto processo7
if %var% EQU 8 goto processo8
if %var% EQU 9 goto processo9
if %var% EQU 10 goto processo10
if %var% EQU 11 goto processo11

:processo2
for /f "delims=1/1" %%i in ("%var2%") do kubectl logs %%i -n %nameSpace% -f
pause
goto :eof

:processo3
for /f "delims=1/1" %%i in ("%var3%") do kubectl logs %%i -n %nameSpace% -f
pause
goto :eof

:processo4
for /f "delims=1/1" %%i in ("%var4%") do kubectl logs %%i -n %nameSpace% -f
pause
goto :eof

:processo5
for /f "delims=1/1" %%i in ("%var5%") do kubectl logs %%i -n %nameSpace% -f
pause
goto :eof

:processo6
for /f "delims=1/1" %%i in ("%var5%") do kubectl logs %%i -n %nameSpace% -f
pause
goto :eof

:processo7
for /f "delims=1/1" %%i in ("%var7%") do kubectl logs %%i -n %nameSpace% -f
pause
goto :eof

:processo8
for /f "delims=1/1" %%i in ("%var8%") do kubectl logs %%i -n %nameSpace% -f
pause
goto :eof

:processo9
for /f "delims=1/1" %%i in ("%var9%") do kubectl logs %%i -n %nameSpace% -f
pause
goto :eof

:processo10
for /f "delims=1/1" %%i in ("%var10%") do kubectl logs %%i -n %nameSpace% -f
pause
goto :eof

:processo11
for /f "delims=1/1" %%i in ("%var11%") do kubectl logs %%i -n %nameSpace% -f
pause
goto :eof

ENDLOCAL
pause