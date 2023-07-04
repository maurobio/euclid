set JAVA_HOME=C:\Program Files (x86)\Java\jdk1.8.0_311
set PATH=%JAVA_HOME%\bin;%PATH%
set JAVA_TOOL_OPTIONS=-Duser.language=en
cd C:\Users\mauro\lamw\AppEuclid\AppEuclid
LC_ALL=C keytool -genkey -v -keystore appeuclid-release.keystore -alias appeuclid.keyalias -keyalg RSA -keysize 2048 -validity 10000 < C:\Users\mauro\lamw\AppEuclid\AppEuclid\keytool_input.txt
:Error
echo off
cls
echo.
echo Signature file created previously, remember that if you delete this file and it was uploaded to Google Play, you will not be able to upload another app without this signature.
echo.
pause
