REM This is a list of useful scripts for deploying Windows 7 PCs

REM Set Office 2010 Key
cscript "C:\Program Files (x86)\Microsoft Office\Office14\ospp.vbs" /inpkey:KEY-KEY-KEY-KEY

REM Install citrix Receiver
\\PATH\TO\FILE\CitrixOnlinePluginWeb.exe /silent

rem Install adobe reader 11.06
msiexec.exe /i "\\PATH\TO\FILE\AcroRead.msi" TRANSFORMS=\\PATH\TO\FILEAcroRead.MST /qn /norestart

REM Install Flash 12
msiexec /i \\PATH\TO\FILE\flash_player_12_active_x.msi /qn /norestart
REM Copy AdobeFlash Files
copy \\PATH\TO\FILE\mms.cfg c:\Windows\System32\Macromed\Flash\mms.cfg /Y

REM JAVA 7 R51 client
MSIEXEC /I \\PATH\TO\FILE\jre1.7.0_51_x86\jre1.7.0_51.msi ADDLOCAL=ALL SYSTRAY=0 EULA=0 IEXPLORER=1 JAVAUPDATE=0 AUTOUPDATECHECK=0 JU=0 /QN /NORESTART

REM JAVA 7 64 R51 client
MSIEXEC /I \\PATH\TO\FILE\jre1.7.0_51_x64\jre1.7.0_51.msi ADDLOCAL=ALL SYSTRAY=0 EULA=0 IEXPLORER=1 JAVAUPDATE=0 AUTOUPDATECHECK=0 JU=0 /QN /NORESTART

REM CutePDF1
\\PATH\TO\FILE\Cutepdf\setup.exe
REM CutePDF2
\\PATH\TO\FILE\Cutepdf\cutewriter.exe /verysilent

REM Change to Eastern Time Zone
C:\Windows\System32\control.exe timedate.cpl,,/Z Eastern Standard Time

REM Change License to kms
cscript c:\windows\system32\slmgr.vbs /ipk KEY-KEY-KEY-KEY

REM Set kms server reg
cscript c:\windows\system32\slmgr.vbs /skms SERVER.DOMAIN

REM auto activate
cscript c:\windows\system32\slmgr.vbs /ato

REM Tell the PC to never standby
powercfg -x -standby-timeout-ac 0

REM Change the OEM Background
xcopy /y "\\PATH\TO\FILE\backgroundDefault.jpg" "C:\Windows\System32\oobe\info\backgrounds\"