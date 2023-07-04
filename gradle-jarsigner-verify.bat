set JAVA_HOME=C:\Program Files (x86)\Java\jdk1.8.0_311
path %JAVA_HOME%\bin;%path%
cd C:\Users\mauro\lamw\AppEuclid\AppEuclid
jarsigner -verify -verbose -certs C:\Users\mauro\lamw\AppEuclid\AppEuclid\build\outputs\apk\release\AppEuclid-release.apk
