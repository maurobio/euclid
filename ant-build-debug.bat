set Path=%PATH%;C:\lamw\apache-ant-1.10.12\bin
set JAVA_HOME=C:\Program Files (x86)\Java\jdk1.8.0_311
cd C:\Users\mauro\lamw\AppEuclid\
call ant clean -Dtouchtest.enabled=true debug
if errorlevel 1 pause
