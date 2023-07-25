import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Flexible Widget'),
            backgroundColor: const Color.fromARGB(255, 61, 12, 131),
          ),
          body: Column(
            children: [
              Flexible(
                  // widget flexible berfungsi untuk mengatur ukuran widget secara fleksibel
                  // tujuan widget flexible adalah untuk mengatur ukuran widget jika berbeda ukuran layar device
                  flex: 1, // flex digunakan untuk mengatur ukuran widget
                  child: Row(
                    children: [
                      Flexible(
                        flex: 1,
                        child: Container(
                          color: Colors.red,
                          margin: const EdgeInsets.all(5),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(
                          color: Colors.yellow,
                          margin: const EdgeInsets.all(5),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(
                          color: Colors.deepPurple,
                          margin: const EdgeInsets.all(5),
                        ),
                      ),
                    ],
                  )),
              Flexible(
                flex: 2,
                child: Container(
                  color: Colors.green,
                  margin: const EdgeInsets.all(5),
                ),
              ),
              Flexible(
                flex: 1,
                child: Container(
                  color: Colors.blue,
                  margin: const EdgeInsets.all(5),
                ),
              ),
            ],
          )),
    );
  }
}
