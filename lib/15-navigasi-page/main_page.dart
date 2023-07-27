import 'package:flutter/material.dart';
import 'package:flutter_dasar/15-navigasi-page/second_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 61, 12, 131),
          title: const Text('Main Page'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                  // Navigator.push() digunakan untuk menampilkan halaman baru di atas halaman yang sedang ditampilkan
                  // push() akan menambahkan halaman baru ke dalam tumpukan halaman tanpa menghapus halaman sebelumnya
                  context, MaterialPageRoute(builder: (context) {
                return const SecondPage(); // SecondPage() adalah halaman yang akan ditampilkan
              }));
            },
            child: const Text('Go to Second Page'),
          ),
        ));
  }
}
