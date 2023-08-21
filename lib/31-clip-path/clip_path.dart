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
          title: const Text("Custom Clipper"),
          backgroundColor: const Color.fromARGB(255, 61, 31, 131),
        ),
        body: Center(
          child: ClipPath(
            // widget ClipPath digunakan untuk membuat custom clipper
            clipper: MyClipper(),
            // clipper: MyClipper() digunakan untuk memanggil class MyClipper
            child: const Image(
                width: 300,
                image: NetworkImage(
                    'https://images.unsplash.com/photo-1560698862-c340d3c8bf38?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80')),
          ),
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  // class MyClipper extends CustomClipper<Path> digunakan untuk membuat custom clipper dengan tipe Path
  @override
  Path getClip(Size size) {
    // Path getClip(Size size) digunakan untuk membuat path yang akan digunakan untuk membuat clipper
    Path path = Path(); // membuat objek path

    path.lineTo(0, size.height);
    // path.lineTo(0, size.height) digunakan untuk membuat garis lurus dari titik 0,0 ke titik 0, size.height
    path.quadraticBezierTo(
        size.width / 2, size.height * 0.75, size.width, size.height);
    // path.quadraticBezierTo(size.width / 2, size.height * 0.75, size.width, size.height) digunakan untuk membuat garis kurva dari titik 0, size.height ke titik size.width, size.height
    path.lineTo(size.width, 0);
    // path.lineTo(size.width, 0) digunakan untuk membuat garis lurus dari titik size.width, size.height ke titik size.width, 0
    path.close();
    // path.close() digunakan untuk menutup path

    return path; // mengembalikan nilai path
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // bool shouldReclip(covariant CustomClipper<Path> oldClipper) digunakan untuk menentukan apakah clipper perlu di rebuild atau tidak
    return false; // jika false maka clipper tidak perlu di rebuild
  }
}
