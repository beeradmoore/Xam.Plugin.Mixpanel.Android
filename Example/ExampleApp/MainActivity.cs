using System.Text;
using Xam.Plugin.Mixpanel.Android.MPMetrics;

namespace ExampleApp;

[Activity(Label = "@string/app_name", MainLauncher = true)]
public class MainActivity : Activity
{
    protected override void OnCreate(Bundle? savedInstanceState)
    {
        base.OnCreate(savedInstanceState);

        // Set our view from the "main" layout resource
        SetContentView(Resource.Layout.activity_main);
        
        var stringBuilder = new StringBuilder();
        stringBuilder.AppendLine($"Mixpanel version: {MixpanelAPI.Version}");
            
        var mixpanel = MixpanelAPI.GetInstance(this, "YOUR_TOKEN", true);

        stringBuilder.AppendLine("Device info:");
        foreach (var deviceInfo in mixpanel.DeviceInfo)
        {
            stringBuilder.AppendLine($" - {deviceInfo.Key}: {deviceInfo.Value}");
        }


        var textView = FindViewById<TextView>(Resource.Id.textViewBox);
        textView.Text = stringBuilder.ToString();
    }
}