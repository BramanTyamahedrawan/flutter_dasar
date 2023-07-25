import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Image Widget'),
            backgroundColor: const Color.fromARGB(255, 61, 12, 131),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // 1. image from asset
                // asset image didaftarkan di pubspec.yaml
                Container(
                    width: 300,
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.lightGreen.shade200,
                        width: 3,
                      ),
                    ),
                    child: Image.asset(
                      // widget Image.asset digunakan untuk menampilkan gambar dari asset
                      'assets/images/budapest.jpg',
                      fit: BoxFit.contain, // agar gambar tidak terpotong
                      repeat: ImageRepeat.repeat, // agar gambar diulang
                    )),
                const Padding(padding: EdgeInsets.all(8)),
                // 2. image from network
                Container(
                  width: 300,
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.lightBlue.shade200,
                      width: 3,
                    ),
                  ),
                  child: Image.network(
                    // widget Image.network digunakan untuk menampilkan gambar dari internet
                    // dengan cara menuliskan url gambar
                    'https://images.unsplash.com/photo-1557425769-de134747b1f6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80',
                    fit: // fit digunakan untuk mengatur bagaimana gambar ditampilkan
                        BoxFit.contain,
                    repeat: // repeat digunakan untuk mengatur bagaimana gambar diulang
                        ImageRepeat.repeat,
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
