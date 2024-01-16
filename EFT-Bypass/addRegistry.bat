@ECHO OFF
%1 mshta CreateObject("Shell.Application").

reg add "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\EscapeFromTarkov" /v "InstallLocation" /t REG_SZ /d %~dp0

echo "done"
pause >nul
exit