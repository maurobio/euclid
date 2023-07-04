export JAVA_HOME=${/usr/libexec/java_home}
export PATH=${JAVA_HOME}/bin:$PATH
cd /Users/mauro/lamw/AppEuclid/AppEuclid
jarsigner -verify -verbose -certs /Users/mauro/lamw/AppEuclid/AppEuclid/bin/AppEuclid-release.apk
