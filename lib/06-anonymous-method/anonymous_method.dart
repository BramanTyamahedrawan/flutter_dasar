import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyApp> {
  var message = 'Anonymous Method';

  // anonymous method adalah method yang tidak memiliki
  void buttonPressed() {
    // method buttonPressed termasuk anonymous method karena tidak memiliki nama
    setState(() {
      message = 'Tombol ditekan';
    });
  }
  // anonymus method bisa juga ditulis seperti ini
  // void buttonPressed() => setState(() => message = 'Tombol ditekan');

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 61, 12, 131),
          title: const Text('Anonymous Method'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(message),
              const Padding(padding: EdgeInsets.all(10)),
              ElevatedButton(
                // anonymous method bisa juga ditulis langsung di dalam method onPressed seperti ini
                onPressed: () {
                  setState(() {
                    message = 'Tombol ditekan';
                  });
                },
                // hasilnya sama dengan method buttonPressed
                child: const Text('Tekan Tombol'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
