export PATH=/lamw/sdk/platform-tools:$PATH
export PATH=/lamw/sdk/build-tools/30.0.2:$PATH
export GRADLE_HOME=/lamw/gradle-6.6.1
export PATH=$PATH:$GRADLE_HOME/bin
zipalign -v -p 4 /Users/mauro/lamw/AppEuclid/AppEuclid/build/outputs/apk/release/AppEuclid-armeabi-v7a-release-unsigned.apk /Users/mauro/lamw/AppEuclid/AppEuclid/build/outputs/apk/release/AppEuclid-armeabi-v7a-release-unsigned-aligned.apk
apksigner sign --ks /Users/mauro/lamw/AppEuclid/AppEuclid/appeuclid-release.keystore --ks-pass pass:123456 --key-pass pass:123456 --out /Users/mauro/lamw/AppEuclid/AppEuclid/build/outputs/apk/release/AppEuclid-release.apk /Users/mauro/lamw/AppEuclid/AppEuclid/build/outputs/apk/release/AppEuclid-armeabi-v7a-release-unsigned-aligned.apk
