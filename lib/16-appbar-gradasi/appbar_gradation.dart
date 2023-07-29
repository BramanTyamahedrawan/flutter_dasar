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
          title: const Text('AppBar Gradation'),
          leading: // leading untuk menambahkan widget di sebelah paling kiri
              const Icon(Icons.menu),
          actions: [
            // actions untuk menambahkan widget di sebelah paling kanan
            IconButton(
              // IconButton untuk menambahkan icon yang dapat diklik
              onPressed: () {},
              icon: const Icon(Icons.search),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.account_circle),
            ),
            const Padding(padding: EdgeInsets.symmetric(horizontal: 16)),
          ],
          flexibleSpace: Container(
            // flexibleSpace untuk menambahkan widget di belakang judul
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                // gradient untuk membuat gradasi warna
                colors: [Color(0xff0096ff), Color(0xff6610f2)],
                begin: FractionalOffset.topLeft,
                end: FractionalOffset.bottomRight,
              ),
              image: DecorationImage(
                image: AssetImage('assets/images/texture.jpg'),
                fit: BoxFit.none,
                repeat: ImageRepeat.repeat, // repeat untuk mengulang gambar
                opacity: 0.2, // opacity untuk mengatur transparansi
              ),
            ),
          ),
        ),
      ),
    );
  }
}
