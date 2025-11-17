#!/bin/sh

set -e 

#./FetchJars.sh

rm -rf Xam.Plugin.Mixpanel.Android/bin
rm -rf Xam.Plugin.Mixpanel.Android/obj

dotnet pack \
    --configuration Release \
    --include-source \
    --include-symbols \
    "Xam.Plugin.Mixpanel.Android/Xam.Plugin.Mixpanel.Android.csproj"
