@ECHO OFF
IF NOT "%~f0" == "~f0" GOTO :WinNT
@"C:\RailsInstaller\Ruby2.2.0\bin\ruby.exe" "C:/Users/Ka/Desktop/code/developmentdatabase/vendor/cache/ruby/2.2.0/bin/ruby_parse_extract_error" %1 %2 %3 %4 %5 %6 %7 %8 %9
GOTO :EOF
:WinNT
@"C:\RailsInstaller\Ruby2.2.0\bin\ruby.exe" "%~dpn0" %*
