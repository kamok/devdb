@ECHO OFF
IF NOT "%~f0" == "~f0" GOTO :WinNT
@"C:\Ruby23-x64\bin\ruby.exe" "C:/Users/Ka/Desktop/code/developmentdatabase/vendor/cache/ruby/2.3.0/bin/geocode" %1 %2 %3 %4 %5 %6 %7 %8 %9
GOTO :EOF
:WinNT
@"C:\Ruby23-x64\bin\ruby.exe" "%~dpn0" %*