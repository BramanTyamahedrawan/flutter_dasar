import 'package:flutter/material.dart';

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
            backgroundColor: const Color.fromARGB(255, 61, 12, 131),
            title: const Text('Text Style')),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                // Container ini digunakan untuk font family Oswald
                // font family Oswald diimpor dari google fonts dan diatur pada pubspec.yaml
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  // BoxDecoration digunakan untuk membuat border
                  borderRadius: BorderRadius.circular(
                    10,
                  ), // untuk membuat border melengkung
                  border: Border.all(
                    // border.all untuk membuat border dengan warna dan ketebalan tertentu
                    color: Colors.purple,
                    width: 2.0,
                  ),
                ),
                child: const Text(
                  'TextStyle font family Oslwald',
                  style: TextStyle(
                    // TextStyle digunakan untuk mengatur style dari text
                    fontFamily:
                        "Oswald", // fontFamily untuk mengatur jenis font
                    fontSize: 30,
                    decoration:
                        TextDecoration.underline, // untuk membuat garis bawah
                    decorationColor:
                        Colors.lightGreen, // untuk mengatur warna garis bawah
                    decorationThickness:
                        1.5, // untuk mengatur ketebalan garis bawah
                    decorationStyle: TextDecorationStyle
                        .wavy, // untuk mengatur style garis bawah
                  ),
                ),
              ),
              const Padding(padding: EdgeInsets.all(10)),
              Container(
                // Container ini digunakan untuk font family Lugrasimo
                // font family Lugrasimo diimpor dari google fonts dan diatur pada pubspec.yaml
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  // BoxDecoration digunakan untuk membuat border
                  borderRadius: BorderRadius.circular(
                      10), // untuk membuat border melengkung
                  border: Border.all(
                      // border.all untuk membuat border dengan warna dan ketebalan tertentu
                      color: Colors.deepPurple,
                      width: 2.0),
                ),
                child: const Text(
                  'TextStyle font family Lugrasimo',
                  style: TextStyle(
                    // TextStyle digunakan untuk mengatur style dari text
                    fontFamily:
                        "Lugrasimo", // fontFamily untuk mengatur jenis font
                    fontSize: 25,
                    decoration:
                        TextDecoration.overline, // untuk membuat garis atas
                    decorationColor:
                        Colors.lightBlue, // untuk mengatur warna garis atas
                    decorationThickness:
                        1.5, // untuk mengatur ketebalan garis atas
                    decorationStyle: TextDecorationStyle
                        .dotted, // untuk mengatur style garis atas
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
