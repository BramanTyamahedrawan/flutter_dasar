import 'package:flutter/material.dart';
import 'package:flutter_dasar/15-navigasi-page/main_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Login Page"),
          backgroundColor: const Color.fromARGB(255, 61, 12, 131),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(
                  // Navigator.pushReplacement() digunakan untuk mengganti halaman yang sedang ditampilkan dengan halaman baru
                  // pushReplacement() akan menghapus halaman sebelumnya dari tumpukan halaman
                  context, MaterialPageRoute(builder: (context) {
                // MaterialPageRoute() digunakan untuk menampilkan halaman baru
                return const MainPage(); // MainPage() adalah halaman yang akan ditampilkan
              }));
            },
            child: const Text("Login"),
          ),
        ),
      ),
    );
  }
}
