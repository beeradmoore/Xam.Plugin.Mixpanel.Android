# Xam.Plugin.Mixpanel.Android

Xamarin.Android bindings for Mixpanel Android v5.8.7.


## Installation

Xam.Plugin.Mixpanel.Android is available via NuGet.
[https://www.nuget.org/packages/Xam.Plugin.Mixpanel.Android/](https://www.nuget.org/packages/Xam.Plugin.Mixpanel.Android/)

[![NuGet](https://img.shields.io/nuget/vpre/Xam.Plugin.Mixpanel.Android.svg?label=NuGet)](https://www.nuget.org/packages/Xam.Plugin.Mixpanel.Android)

## Usage

Include Mixpanel
``` c#
using Xam.Plugin.Mixpanel.Android;
```

And then follow the docs provided at the Mixpanel Developer Documentation (https://developer.mixpanel.com/docs/android)

## Breaking Changes
### v5.6.5
The Xam.Plugin.Mixpanel.Android.Mpmetrcis namespace has been renamed to Xam.Plugin.Mixpanel.Android.MPMetrics. 

## Build

### Visutal Studio for Mac
1. Run FetchJars.sh 
    ``` sh
    $ ./FetchJars.sh
    ```
2. Open Xam.Plugin.Mixpanel.Android.sln
3. Build and fetch your .dlls from the bin/ directory.

### Building a .nupkg
1. Run BuildNugetPackage.sh
    ``` sh
    $ ./BuildNugetPackage.sh
    ```
2. Fetch your Xam.Plugin.Mixpanel.Android.x.y.z.nupkg and Xam.Plugin.Mixpanel.Android.x.y.z.snupkg from the Binding directory.

### Adding JavaDocs
FetchJars.sh will download the .aar file and .javadoc.jar files from [Maven](https://search.maven.org/search?q=a:mixpanel-android) and place/extract them in the suitable folders.

## Updating Mixpanel SDK
To update the Mixpanel SDK change the MIXPANEL_VERSION variable within FetchJars.sh to your desired SDK version and run build steps again.

## Requirements
- [Visual Studio for Mac](https://visualstudio.microsoft.com/vs/mac/)

## TODO
* Try figure out how to reduce the number of warnings.
* Figure out why the class MixpanelFCMMessagingService is missing.
* Figure out how to get JavaDocs to work correctly. Should we include the relevant jars (already downloading with FetchJars.sh) with JavaDocJar and JavaSourceJar in the csproj. Should we continue using the JavaDocs folder like we currently do.

Pull requests welcome!
