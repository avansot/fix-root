@echo off
color 2F
REM mode con:cols=80 lines=40
set var1="%%1"
set var2=%%*
ECHO. 01. MOSTRAR ASOCIACIONES DE ARCHIVOS
echo.
ftype exefile
ftype comfile
ftype cmdfile
ftype piffile
ftype regfile
ftype vbsfile
echo.
ECHO. 02. REPARANDO ASOCIACIONES DE ARCHIVOS
echo.
assoc .exe=exefile
ftype exefile=%var1% %var2%
echo.
assoc .com=comfile
ftype comfile=%var1% %var2%
echo.
assoc .cmd=cmdfile
ftype cmdfile=%var1% %var2%
echo.
assoc .pif=piffile
ftype piffile=%var1% %var2%
echo.
assoc .reg=regfile
ftype regfile=regedit.exe %var1%
echo.
assoc .vbs=vbsfile
ftype vbsfile="%SystemRoot%\System32\WScript.exe" %var1% %var2%
echo.
PAUSE.