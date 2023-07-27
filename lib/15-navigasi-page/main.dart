import 'package:flutter/material.dart';
import 'package:flutter_dasar/15-navigasi-page/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginPage(), // LoginPage sebagai halaman pertama yang ditampilkan
    );
  }
}
