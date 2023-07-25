import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Stack Widget'),
          backgroundColor: const Color.fromARGB(255, 61, 12, 131),
        ),
        body: Stack(
          // widget stack digunakan untuk menumpuk widget satu dengan widget lainnya
          children: [
            // 1. column untuk background
            Column(
              children: [
                Flexible(
                  flex: 1,
                  child: Row(
                    children: [
                      Flexible(
                        flex: 1,
                        child: Container(color: Colors.white),
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(color: Colors.black12),
                      ),
                    ],
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Row(
                    children: [
                      Flexible(
                        flex: 1,
                        child: Container(color: Colors.black12),
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            // 2. listview untuk teks
            ListView(
              children: const [
                Text(
                  "Tempor cupidatat nostrud ullamco quis occaecat elit magna esse Lorem ullamco nulla. Mollit ex fugiat exercitation aute elit non pariatur ex. In est dolore occaecat consectetur veniam incididunt. Voluptate labore nisi amet nisi do quis et cillum consectetur duis culpa tempor. Occaecat officia aliqua ex fugiat qui deserunt officia dolore sit eiusmod laborum duis. Laborum occaecat quis nisi reprehenderit.",
                  style: TextStyle(fontSize: 25),
                ),
                Padding(padding: EdgeInsets.all(10)),
                Text(
                  "Velit velit enim esse Lorem qui aliquip irure dolore commodo proident esse sunt commodo. Sint aliqua duis aliquip reprehenderit enim occaecat cupidatat ipsum commodo. Veniam irure adipisicing nisi consectetur ipsum officia. Nulla et aliquip ex exercitation reprehenderit exercitation magna occaecat ea minim qui veniam fugiat dolor. Sit aliquip duis incididunt fugiat tempor eiusmod.",
                  style: TextStyle(fontSize: 25),
                ),
                Padding(padding: EdgeInsets.all(10)),
                Text(
                  "Officia sint irure laboris duis ut fugiat commodo officia aliquip amet. Culpa adipisicing incididunt occaecat amet minim do nulla. In fugiat non aute mollit ex cupidatat do laboris. Commodo non elit voluptate et aute ex duis. Lorem qui consequat culpa magna.",
                  style: TextStyle(fontSize: 25),
                )
              ],
            ),
            // 3. button untuk tombol
            Align(
              // widget align digunakan untuk mengatur posisi widget
              alignment: const Alignment(1, 0.90), // posisi kanan bawah
              child: ElevatedButton.icon(
                // tombol dengan icon
                onPressed: () {},
                icon: const Icon(Icons.play_circle), // icon play
                label: const Text("Click Me"),
                style: ElevatedButton.styleFrom(
                  // untuk mengatur style tombol
                  foregroundColor: Colors.white, // warna teks
                  backgroundColor: // warna background
                      const Color.fromARGB(255, 70, 158, 70), // warna teks
                  shape: RoundedRectangleBorder(
                    // bentuk tombol
                    borderRadius: BorderRadius.circular(15.0), // radius tombol
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
