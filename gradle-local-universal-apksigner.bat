set Path=%PATH%;C:\lamw\sdk\platform-tools;C:\lamw\sdk\build-tools\30.0.2
set GRADLE_HOME=C:\lamw\gradle-6.6.1
set PATH=%PATH%;%GRADLE_HOME%\bin
zipalign -v -p 4 C:\Users\mauro\lamw\AppEuclid\AppEuclid\build\outputs\apk\release\AppEuclid-universal-release-unsigned.apk C:\Users\mauro\lamw\AppEuclid\AppEuclid\build\outputs\apk\release\AppEuclid-universal-release-unsigned-aligned.apk
apksigner sign --ks C:\Users\mauro\lamw\AppEuclid\AppEuclid\appeuclid-release.keystore --ks-pass pass:123456 --key-pass pass:123456 --out C:\Users\mauro\lamw\AppEuclid\AppEuclid\build\outputs\apk\release\AppEuclid-release.apk C:\Users\mauro\lamw\AppEuclid\AppEuclid\build\outputs\apk\release\AppEuclid-universal-release-unsigned-aligned.apk
