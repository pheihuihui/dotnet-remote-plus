using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using VisioForge.Types;

namespace RemotePlus
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            RemoteCapture.Video_Sample_Grabber_Enabled = true;
            RemoteCapture.Audio_OutputDevice = "Default DirectSound Device";
            RemoteCapture.Audio_RecordAudio = false;
            RemoteCapture.Audio_PlayAudio = false;
            RemoteCapture.Video_Renderer.Video_Renderer = VFVideoRendererWPF.WPF;

            RemoteCapture.Video_CaptureDevice = "Live Streaming Video Device";
            RemoteCapture.Audio_OutputDevice = "Default DirectSound Device";
            RemoteCapture.Video_CaptureFormat = "1920x1080 MJPG, 24bit";

            RemoteCapture.Video_FrameRate = 60.0;
            RemoteCapture.Mode = VFVideoCaptureMode.VideoPreview;

            RemoteCapture.Start();
        }

        private void RemoteCapture_OnError(object sender, ErrorsEventArgs e)
        {
            LogBox.Text += e.Message + Environment.NewLine;
        }
    }
}
