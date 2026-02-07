# Xam.Plugin.Mixpanel.Android

Xamarin.Android bindings for Mixpanel Android v8.3.0.

This repository aims to target `net9.0-android` and `net10.0-android` which are currently the latest .NET Android STS and LTS releases. 

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
## Build

These build instructions are intended to be run on macOS. If you'd like to run them on Windows you need to open the `.sh` files and run equivalent commands for Windows.

### Local dll builds
1. Navigate to the `Binding` directory
2. Run `FetchJars.sh`
3. Run `BuildDlls.sh`
4. Fetch your `Xam.Plugin.Mixpanel.Android.dll` from the `Xam.Plugin.Mixpanel.Android/bin/Release/net10-android/` directory.

### Building a .nupkg
1. Navigate to the `Binding` directory
2. Run `FetchJars.sh`
3. Run `BuildNugetPackage.sh`
4. Fetch your `Xam.Plugin.Mixpanel.Android.x.y.z.nupkg` and `Xam.Plugin.Mixpanel.Android.x.y.z.snupkg` from the `Xam.Plugin.Mixpanel.Android/bin/Release/` directory.

### Adding JavaDocs
`FetchJars.sh` will download the `.aar` file and `.javadoc.jar` files from [Maven](https://search.maven.org/search?q=a:mixpanel-android) and place them in the suitable folders.

## Updating Mixpanel SDK
To update the Mixpanel SDK change the `MIXPANEL_VERSION` variable within `FetchJars.sh` to your desired SDK version and run build steps again.

To update the entire repository search for your old version number and replace it with the new version number.

## Requirements
The current nuget packages are built using the following config:
* .NET SDK version 10.0.102 
* Java SDK version 21.0.10
* Android SDK Version 36


Pull requests welcome!
