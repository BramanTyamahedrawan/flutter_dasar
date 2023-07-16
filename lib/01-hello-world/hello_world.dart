import 'package:flutter/material.dart';

void main() {
  // fungsi main() adalah fungsi yang pertama kali dijalankan ketika aplikasi dijalankan
  runApp(const MyApp()); // runApp() adalah fungsi untuk menjalankan aplikasi
  // const MyApp() adalah widget yang akan dijalankan
}

class MyApp extends StatelessWidget {
  // stateless widget adalah widget yang tidak memiliki state (data yang berubah-ubah)
  const MyApp(
      {super.key}); // super.key adalah key yang digunakan untuk mengidentifikasi widget

  @override // @override digunakan untuk menimpa method yang sudah ada
  Widget build(BuildContext context) {
    // method build() adalah method yang akan dijalankan ketika widget dijalankan
    return MaterialApp(
      // MaterialApp adalah widget yang digunakan untuk membuat aplikasi yang memiliki material design
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: const Color.fromARGB(255, 61, 12, 131),
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.deepPurple,
        ),
      ),
      home: Scaffold(
        // Scaffold adalah widget yang digunakan untuk membuat layout
        appBar: AppBar(
          // AppBar adalah widget yang digunakan untuk membuat AppBar
          backgroundColor: const Color.fromARGB(255, 61, 12, 131),
          title: const Text('Flutter Demo Home Page'),
        ),
        body: // body adalah widget yang digunakan untuk membuat body
            const Center(
          child: Text(
            'Hello, world!',
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}
