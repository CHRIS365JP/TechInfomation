Title OpenOffice.org Installation

REM Setting variable
set Thumb=c:
if exist "c:\PCS Auto Install.bat" goto Start
set Thumb=D:
if exist "D:\PCS Auto Install.bat" goto Start
set Thumb=E:
if exist "E:\PCS Auto Install.bat" goto Start
set Thumb=F:
if exist "F:\PCS Auto Install.bat" goto Start
set Thumb=G:
if exist "G:\PCS Auto Install.bat" goto Start
set Thumb=H:
if exist "H:\PCS Auto Install.bat" goto Start
set Thumb=I:
if exist "I:\PCS Auto Install.bat" goto Start
set Thumb=J:
if exist "J:\PCS Auto Install.bat" goto Start
set Thumb=K:
if exist "K:\PCS Auto Install.bat" goto Start
set Thumb=L:
if exist "L:\PCS Auto Install.bat" goto Start
set Thumb=M:
if exist "M:\PCS Auto Install.bat" goto Start
set Thumb=N:
if exist "N:\PCS Auto Install.bat" goto Start
set Thumb=O:
if exist "O:\PCS Auto Install.bat" goto Start
set Thumb=P:
if exist "P:\PCS Auto Install.bat" goto Start
set Thumb=Q:
if exist "Q:\PCS Auto Install.bat" goto Start
set Thumb=R:
if exist "R:\PCS Auto Install.bat" goto Start
set Thumb=S:
if exist "S:\PCS Auto Install.bat" goto Start
set Thumb=T:
if exist "T:\PCS Auto Install.bat" goto Start
set Thumb=U:
if exist "U:\PCS Auto Install.bat" goto Start
set Thumb=V:
if exist "V:\PCS Auto Install.bat" goto Start
set Thumb=W:
if exist "W:\PCS Auto Install.bat" goto Start
set Thumb=X:
if exist "X:\PCS Auto Install.bat" goto Start
set Thumb=Y:
if exist "Y:\PCS Auto Install.bat" goto Start
set Thumb=Z:
if exist "Z:\PCS Auto Install.bat" goto Start
goto end

:Start

echo Install Java?
set /P C=[Y,N]?
if "%C%"=="Y" goto Java
if "%C%"=="y" goto Java
if "%C%"=="N" goto OOo
if "%C%"=="n" goto OOo

:Java
Echo Installing Java
Call "%Thumb%\Programs\OOoSilent\Java\Java 32-bit.exe" /s ADDLOCAL=ALL IEXPLORER=1 MOZILLA=1
echo ]

:OOo
Echo Installing OpenOffice

msiexec /qn /norestart /i %Thumb%\Programs\OOoSilent\OOo\openofficeorg33.msi SETUP_USED=1 ADDLOCAL=ALL

if NOT %PROCESSOR_ARCHITECTURE%==AMD64 goto x86 
set ProFi=C:\Program Files (x86)
goto AMD64
:x86
set ProFi=C:\Program Files
:AMD64

Echo Installing OpenOffice Extension

echo yes | "%ProFi%\OpenOffice.org 3\program\unopkg" add -f -s "%Thumb%\Programs\OOoSilent\Extension\DisableFirstStartWzd_ooo33.oxt"
Echo Copy OpenOffice Configuration files

copy %Thumb%\Programs\OOoSilent\Config\calc.xcd "%ProFi%\OpenOffice.org 3\share\registry\calc.xcd" /Y
copy %Thumb%\Programs\OOoSilent\Config\impress.xcd "%ProFi%\OpenOffice.org 3\share\registry\impress.xcd" /Y
copy %Thumb%\Programs\OOoSilent\Config\writer.xcd "%ProFi%\OpenOffice.org 3\share\registry\writer.xcd" /Y
Pause
