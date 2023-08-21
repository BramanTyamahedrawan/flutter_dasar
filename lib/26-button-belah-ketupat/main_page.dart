import 'package:flutter/material.dart';
import 'colorfull_rhombus_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Rhombus Colorfull Button'),
          backgroundColor: const Color.fromARGB(255, 61, 31, 131),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ColorfullButton(
                Colors.red,
                Colors.yellow,
                const Icon(Icons.adb),
              ),
              ColorfullButton(
                Colors.blue,
                Colors.indigo,
                const Icon(Icons.comment),
              ),
              ColorfullButton(
                Colors.green,
                Colors.cyan,
                const Icon(Icons.computer),
              ),
              ColorfullButton(
                Colors.purple,
                Colors.pink,
                const Icon(Icons.contact_mail),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
