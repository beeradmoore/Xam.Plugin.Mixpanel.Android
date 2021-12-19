using System;
using Android.App;
using Android.OS;
using Android.Runtime;
using Android.Views;
using AndroidX.AppCompat.Widget;
using AndroidX.AppCompat.App;
using Google.Android.Material.FloatingActionButton;
using Google.Android.Material.Snackbar;
using Xam.Plugin.Mixpanel.Android.MPMetrics;
using Android.Widget;
using Toolbar = AndroidX.AppCompat.Widget.Toolbar;
using System.Text;

namespace ExampleProject
{
    [Activity(Label = "@string/app_name", Theme = "@style/AppTheme.NoActionBar", MainLauncher = true)]
    public class MainActivity : AppCompatActivity
    {
        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
            Xamarin.Essentials.Platform.Init(this, savedInstanceState);
            SetContentView(Resource.Layout.activity_main);

            var toolbar = FindViewById<Toolbar>(Resource.Id.toolbar);
            SetSupportActionBar(toolbar);

            var stringBuilder = new StringBuilder();
            stringBuilder.AppendLine($"Mixpanel version: {MixpanelAPI.Version}");
            
            var mixpanel = MixpanelAPI.GetInstance(this, "YOUR_TOKEN");

            stringBuilder.AppendLine("Device info:");
            foreach (var deviceInfo in mixpanel.DeviceInfo)
            {
                stringBuilder.AppendLine($" - {deviceInfo.Key}: {deviceInfo.Value}");
            }


            var textView = FindViewById<TextView>(Resource.Id.textViewBox);
            textView.Text = stringBuilder.ToString();
        }


        public override void OnRequestPermissionsResult(int requestCode, string[] permissions, [GeneratedEnum] Android.Content.PM.Permission[] grantResults)
        {
            Xamarin.Essentials.Platform.OnRequestPermissionsResult(requestCode, permissions, grantResults);

            base.OnRequestPermissionsResult(requestCode, permissions, grantResults);
        }
    }
}
