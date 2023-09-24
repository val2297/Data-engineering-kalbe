@echo off
:: Variables
set "path=C:\hdfs\data"
set "name_of_directory=data1"
set "filename_excel=daily_market_price.xlsx"
set "source_dir=C:/path/to/market"
set "target_dir=C:\path\to\target\directory"
set "log_file=%target_dir%\log.txt"

:: Check if the target directory exists
if not exist "%target_dir%" (
    echo target dir does not exist.Creating...
    mkdir "%target_dir%"
)

::check if the source dir exists
if not exist "%source_dir%" (
    echo source dir does not exist
)

:: Check if the specified path/directory exists
if not exist "%path%\%name_of_directory%" (
    echo %name_of_directory% does not Exists!
    mkdir "%path%\%name_of_directory%"
    echo %name_of_directory% Directory Created.
)
data1 does not Exists!
The directory or file cannot be created.
data1 Directory Created.

::copy the file from source to target directory
C:\Windows\System32\xcopy "%source_dir%\%filename_excel%" "%target_dir%\" /C /H /Y
C:/path/to/market\daily_market_price.xlsx
1 File(s) copied

:: Checking whether the copy operation is successful (error level value is 0)
if %errorlevel%==0 (
    echo File Moved Succesfully >> %log_file%
)