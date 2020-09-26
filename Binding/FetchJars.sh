#!/bin/sh

MIXPANEL_VERSION=5.8.4

rm -f  Jars/mixpanel-android.aar 
rm -f  Jars/mixpanel-android-javadoc.jar 
rm -f  Jars/mixpanel-android-sources.jar 

curl -L -o Jars/mixpanel-android.aar "https://search.maven.org/remotecontent?filepath=com/mixpanel/android/mixpanel-android/${MIXPANEL_VERSION}/mixpanel-android-${MIXPANEL_VERSION}.aar"
curl -L -o Jars/mixpanel-android-javadoc.jar "https://search.maven.org/remotecontent?filepath=com/mixpanel/android/mixpanel-android/${MIXPANEL_VERSION}/mixpanel-android-${MIXPANEL_VERSION}-javadoc.jar"
curl -L -o Jars/mixpanel-android-sources.jar "https://search.maven.org/remotecontent?filepath=com/mixpanel/android/mixpanel-android/${MIXPANEL_VERSION}/mixpanel-android-${MIXPANEL_VERSION}-sources.jar"

rm -rf JavaDocs
mkdir JavaDocs
pushd JavaDocs
cp ../Jars/mixpanel-android-javadoc.jar .
jar xf mixpanel-android-javadoc.jar
rm -f mixpanel-android-javadoc.jar
popd