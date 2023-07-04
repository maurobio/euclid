export JAVA_HOME=/Program Files (x86)/Java/jdk1.8.0_311
cd /Users/mauro/lamw/AppEuclid/AppEuclid
LC_ALL=C keytool -genkey -v -keystore appeuclid-release.keystore -alias appeuclid.keyalias -keyalg RSA -keysize 2048 -validity 10000 < /Users/mauro/lamw/AppEuclid/AppEuclid/keytool_input.txt
