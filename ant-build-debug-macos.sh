export PATH=/lamw/apache-ant-1.10.12/bin:$PATH
export JAVA_HOME=${/usr/libexec/java_home}
export PATH=${JAVA_HOME}/bin:$PATH
cd /Users/mauro/lamw/AppEuclid/
ant -Dtouchtest.enabled=true debug
