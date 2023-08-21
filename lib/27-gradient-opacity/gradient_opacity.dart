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
          title: const Text('Gradient Opacity'),
          backgroundColor: const Color.fromARGB(255, 61, 31, 131),
        ),
        body: Center(
          child: ShaderMask(
            // shaderMask adalah widget yang digunakan untuk menerapkan efek gradient pada gambar
            shaderCallback: (rectangle) => const LinearGradient(
              // shaderCallback adalah fungsi yang digunakan untuk mengembalikan nilai gradient
              // shaderCallback menerima parameter rectangle yang berisi informasi mengenai ukuran gambar
              colors: [Colors.black, Colors.transparent],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ).createShader(
              // createShader adalah fungsi yang digunakan untuk membuat gradient
              Rect.fromLTRB(0, 0, rectangle.width, rectangle.height),
              // Rect.fromLTRB digunakan untuk membuat gradient dari titik kiri bawah ke titik kanan atas
            ),
            blendMode: BlendMode
                .dstIn, // blendMode digunakan untuk menentukan tipe efek gradient
            child: const Image(
              width: 300,
              image: NetworkImage(
                  'https://images.unsplash.com/photo-1563804026626-f0225ec1817a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8Y3plY2glMjByZXB1YmxpY3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=600&q=60'),
            ),
          ),
        ),
      ),
    );
  }
}
