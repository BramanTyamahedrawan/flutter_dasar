import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  AudioPlayer audioPlayer = AudioPlayer(); // inisialisasi audio player

  _MyAppState() {
    // constructor
    audioPlayer.onPositionChanged.listen((duration) {
      // audioPlayer.onPositionChanged.listen((duration) berfungsi untuk mendapatkan durasi audio yang sedang diputar
      setState(() {
        durasi = duration.toString(); // durasi diubah menjadi string
      });
    });
    audioPlayer.setReleaseMode(ReleaseMode.loop);
    // audioPlayer.setReleaseMode(ReleaseMode.loop) berfungsi untuk mengulang audio yang sedang diputar
  }

  void playSound(String url) async {
    // fungsi untuk memutar audio
    await audioPlayer.play(UrlSource(url));
    // await audioPlayer.play(UrlSource(url)) berfungsi untuk memutar audio dari url
  }

  void pauseSound() async {
    // fungsi untuk menghentikan audio
    await audioPlayer
        .pause(); // await audioPlayer.pause() berfungsi untuk menghentikan audio
  }

  void stopSound() async {
    // fungsi untuk menghentikan audio
    await audioPlayer
        .stop(); // await audioPlayer.stop() berfungsi untuk menghentikan audio
  }

  void resumeSound() async {
    // fungsi untuk melanjutkan audio
    await audioPlayer
        .resume(); // await audioPlayer.resume() berfungsi untuk melanjutkan audio
  }

  String durasi = "00:00:00"; // inisialisasi durasi audio

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Audio Player'),
          backgroundColor: const Color.fromARGB(255, 61, 31, 131),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  playSound(// memanggil fungsi playSound
                      "https://cdn.pixabay.com/download/audio/2022/03/24/audio_a75c0a49e1.mp3?filename=opening-soda-can-1-104791.mp3&g-recaptcha-response=03ADUVZwDWeoRgMBgsi-KSTDu-_NVlkRYTXpo2OR0jVsvEje639Bpnp6NhNDmsQkP2DJcJu2YyHXpX-2ZJ5rtIX4guwBcSlXZhaCqzu_LlAHtbICrlVl2ietqFqBIzuvn1rXE6ljbbW6qifY32D2J7sx1VFFuQSq7f0pdcBgnX22L36x-u--_gOnENlcSHkbVXJXqTB7VFs605lOjH6o2rX8KS54jgxskcWVeBFS0eg51Bt5GnO31xj4Ip0jRMZMs7n4sdTXCb27XrvISxg14Up6E8uXmWMyLC_-WS_A1j-EhAh2eypSvOVNql90YPU7plaes8yNwb4xNpKTxMm1FQMISgzc6G_H1EfwPDvHgw4tJ5jY28N3a4uuDVYaQpTrznggQqfUEDVeKTgZzI33fyEWS1Ws284SI_HcTatYqHgXWzlq15ltFaVZ6nZZv4LR7NkEKVmw-g56fR_06OBWL5qTgrkp3gVDWO5IbRJ86Fz1zlyGkcML09b5RsvbYklwTJYn_1YH7O1NhA&remote_template=1");
                  // memanggil fungsi playSound dengan parameter url audio
                },
                child: const Text('Play'),
              ),
              ElevatedButton(
                onPressed: () {
                  pauseSound(); // memanggil fungsi pauseSound
                },
                child: const Text('Pause'),
              ),
              ElevatedButton(
                onPressed: () {
                  stopSound(); // memanggil fungsi stopSound
                },
                child: const Text('Stop'),
              ),
              ElevatedButton(
                onPressed: () {
                  resumeSound(); // memanggil fungsi resumeSound
                },
                child: const Text('Resume'),
              ),
              Text(
                durasi, // menampilkan durasi audio
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              )
            ],
          ),
        ),
      ),
    );
  }
}
