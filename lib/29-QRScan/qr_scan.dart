import 'package:flutter/material.dart';
import 'package:qrscan/qrscan.dart' as scanner;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    String? text = 'Hasil QR Scan';
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('QR Scan'),
            backgroundColor: const Color.fromARGB(255, 61, 31, 131),
          ),
          body: Center(
            child: Column(
              children: [
                Text(text),
                ElevatedButton(
                    onPressed: () async {
                      text = await scanner.scan();
                      setState(() {});
                    },
                    child: const Text('Scan')),
              ],
            ),
          )),
    );
  }
}
