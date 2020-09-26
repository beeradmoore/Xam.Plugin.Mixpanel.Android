#!/bin/sh
./FetchJars.sh
msbuild Xam.Plugin.Mixpanel.Android.csproj -property:Configuration=Release -target:Clean,Build
nuget pack Xam.Plugin.Mixpanel.Android.nuspec -Symbols -SymbolPackageFormat snupkg