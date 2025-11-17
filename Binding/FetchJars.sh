#!/bin/sh

set -e

MIXPANEL_VERSION=8.2.4

rm -f Xam.Plugin.Mixpanel.Android/mixpanel-android.aar
rm -f Xam.Plugin.Mixpanel.Android/mixpanel-android.pom
rm -f Xam.Plugin.Mixpanel.Android/mixpanel-android-javadoc.jar
rm -f Xam.Plugin.Mixpanel.Android/mixpanel-android-sources.jar

curl -L -o Xam.Plugin.Mixpanel.Android/mixpanel-android.aar "https://repo1.maven.org/maven2/com/mixpanel/android/mixpanel-android/${MIXPANEL_VERSION}/mixpanel-android-${MIXPANEL_VERSION}.aar"
curl -L -o Xam.Plugin.Mixpanel.Android/mixpanel-android.pom "https://repo1.maven.org/maven2/com/mixpanel/android/mixpanel-android/${MIXPANEL_VERSION}/mixpanel-android-${MIXPANEL_VERSION}.pom"
curl -L -o Xam.Plugin.Mixpanel.Android/mixpanel-android-javadoc.jar "https://repo1.maven.org/maven2/com/mixpanel/android/mixpanel-android/${MIXPANEL_VERSION}/mixpanel-android-${MIXPANEL_VERSION}-javadoc.jar"
curl -L -o Xam.Plugin.Mixpanel.Android/mixpanel-android-sources.jar "https://repo1.maven.org/maven2/com/mixpanel/android/mixpanel-android/${MIXPANEL_VERSION}/mixpanel-android-${MIXPANEL_VERSION}-sources.jar"

#rm -rf JavaDocs
#mkdir JavaDocs
#pushd JavaDocs
#cp ../Jars/mixpanel-android-javadoc.jar .
#jar xf mixpanel-android-javadoc.jar
#rm -f mixpanel-android-javadoc.jar
#popd