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
            backgroundColor: const Color.fromARGB(255, 61, 12, 131),
            title: const Text('Row Widget')),
        body: Center(
          // widget row dan column dapat digabungkan dan memiliki properti children yang dapat diisi dengan widget lain
          child: Row(
            // Row adalah widget yang digunakan untuk menampilkan widget secara horizontal
            mainAxisAlignment:
                MainAxisAlignment // mainAxisAlignment untuk menentukan posisi widget (row, column, dan flex), default nilai adalah MainAxisAlignment.start
                    .spaceEvenly, // spaceEvenly untuk menyeimbangkan ruang di antara widget
            children: [
              Container(
                color: Colors.lightBlue,
                width: 30,
                height: 30,
              ),
              Container(
                color: const Color.fromARGB(255, 107, 244, 3),
                width: 30,
                height: 30,
              ),
              Container(
                color: Colors.purple[300],
                width: 30,
                height: 30,
              ),
            ],
          ),
          // batas akhir widget Row
        ),
      ),
    );
  }
}
