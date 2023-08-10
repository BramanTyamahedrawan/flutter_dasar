import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen[100],
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 61, 31, 131),
        title: const Text('Hero and ClipRRect'),
      ),
      body: Center(
        child: Column(
          children: [
            Card(
              margin: const EdgeInsets.all(10),
              child: Container(
                margin: const EdgeInsets.all(10),
                child: const Text(
                  'Second Page',
                  style: TextStyle(
                    fontFamily: 'Oswald',
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const Padding(padding: EdgeInsets.all(10)),
            Hero(
              tag:
                  'image', // tag sama dengan tag yang ada di halaman sebelumnya
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width / 2,
                  height: MediaQuery.of(context).size.width / 2,
                  child: const Image(
                    image: NetworkImage(
                        'https://external-preview.redd.it/rcU6LYitc60Ps0iRDQa_J6oY4mK15oP8HLqBACgNNj8.jpg?auto=webp&s=6ea386b0725318f01608ee0776c2b70340304dcd'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
