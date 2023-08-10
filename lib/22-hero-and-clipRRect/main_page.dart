import 'package:flutter/material.dart';
import 'package:flutter_dasar/22-hero-and-clipRRect/second_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[100],
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 61, 31, 131),
        title: const Text('Hero and ClipRRect'),
      ),
      body: Center(
          child: Column(
        children: [
          Card(
            color: Colors.grey[200],
            margin: const EdgeInsets.all(10),
            child: Container(
              margin: const EdgeInsets.all(10),
              child: const Text(
                'Main Page',
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: 'Pacifico',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const Padding(padding: EdgeInsets.all(10)),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const SecondPage();
              }));
            },
            child: Hero(
              // Hero digunakan untuk membuat animasi perpindahan halaman
              tag: 'image', // tag digunakan untuk mengidentifikasi Hero
              // tag harus sama dengan tag yang ada di halaman tujuan
              child: ClipRRect(
                // ClipRRect digunakan untuk membulatkan sudut gambar
                borderRadius: BorderRadius.circular(50),
                child: const SizedBox(
                  width: 100,
                  height: 100,
                  child: Image(
                    image: NetworkImage(
                        'https://external-preview.redd.it/rcU6LYitc60Ps0iRDQa_J6oY4mK15oP8HLqBACgNNj8.jpg?auto=webp&s=6ea386b0725318f01608ee0776c2b70340304dcd'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}
