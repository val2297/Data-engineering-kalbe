@echo off
setlocal
#set variabel
set "path=C:\hdfs\data\data1"
set "name_of_directory=data1"

# Check if the directory already exists
if exist "%path%\%name_of_directory%" (
More? echo There is %name_of_directory%! Directory Exists!
More? ) else (
More? echo Directory %name_of_directory% Does not exist!
More? mkdir "%path%\name_of_directory%"
More? echo %name_of_directory% has been created.
More? )
Directory data1 Does not exist!
data1 directory has been created.

#create a crontab syntax to run the script at 07:00 AM Daily
schtasks /create /tn "CheckDirectoryTask" /tr "%~dp0check_directory.bat" /sc daily /st 07:00
SUCCESS: The scheduled task "CheckDirectoryTask" has successfully been created.

::Tugas sudah dijalankan setiap hari pukul 07:00
echo Tugas telah dijadwalkan untuk berjalan setiap hari pukul 07:00 AM.
Tugas telah dijadwalkan untuk berjalan setiap hari pukul 07:00 AM.
