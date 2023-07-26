import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Spacer Widget'),
          backgroundColor: const Color.fromARGB(255, 61, 12, 131),
        ),
        body: Center(
          child: Row(
            children: [
              const Spacer(
                // Spacer digunakan untuk memberikan jarak antar widget secara fleksibel
                // kegunaan spacer hampir mirip dengan mainAxisAlignment.spaceBetween, yang membedakan spacer dapat diatur flex nya
                flex:
                    1, // flex digunakan untuk mengatur seberapa besar jarak yang diberikan
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.red,
              ),
              const Spacer(
                flex: 2,
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.green,
              ),
              const Spacer(
                flex: 3,
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.blue,
              ),
              const Spacer(
                flex: 1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
