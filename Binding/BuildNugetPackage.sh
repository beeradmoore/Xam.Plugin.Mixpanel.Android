#!/bin/sh

set -e 

#./FetchJars.sh

dotnet pack \
    --configuration Release \
    --include-source \
    --include-symbols \
    -p:NuspecFile="../Xam.Plugin.Mixpanel.Android.nuspec" \
    "Xam.Plugin.Mixpanel.Android/Xam.Plugin.Mixpanel.Android.csproj"
