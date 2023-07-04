export JAVA_HOME=${/usr/libexec/java_home}
export PATH=${JAVA_HOME}/bin:$PATH
cd /Users/mauro/lamw/AppEuclid/AppEuclid
keytool -genkey -v -keystore appeuclid-release.keystore -alias appeuclid.keyalias -keyalg RSA -keysize 2048 -validity 10000 < /Users/mauro/lamw/AppEuclid/AppEuclid/keytool_input.txt
