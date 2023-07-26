import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color color1 = Colors.deepPurple; // color digunakan untuk draggable widget
  Color color2 = Colors.purpleAccent; // color digunakan untuk draggable widget
  late Color
      targetColor; // color digunakan untuk drag target widget menggunakan tipe late
  // tipe late digunakan untuk mendeklarasikan variabel yang akan diinisialisasi nanti
  bool isAccepted =
      false; // digunakan untuk mengecek apakah widget sudah diterima

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Dragable Widget"),
          backgroundColor: const Color.fromARGB(255, 61, 12, 131),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Draggable(
                  // widget draggable digunakan untuk membuat widget yang dapat di drag
                  data: color2, // menampung data yang akan di drag
                  // ignore: sort_child_properties_last
                  child: SizedBox(
                    // widget sizebox digunakan untuk membuat widget dengan ukuran yang telah ditentukan
                    width: 50,
                    height: 50,
                    child: Material(
                      // widget material digunakan untuk membuat widget dengan efek material.
                      // widget ini digunakan untuk membuat widget yang memiliki efek bayangan
                      color:
                          color2, // memberikan warna pada widget ketika widget (belum) di drag
                      shape: // shape digunakan untuk membuat bentuk widget
                          const StadiumBorder(), // membuat bentuk widget berbentuk stadium
                      elevation: 3, // membuat efek bayangan widget
                    ),
                  ),
                  childWhenDragging: const SizedBox(
                    // child when dragging digunakan untuk membuat bekas widget yang lama muncul ketika widget sedang di drag
                    width: 50,
                    height: 50,
                    child: Material(
                      color: Colors
                          .brown, // memberikan warna pada widget ketika widget (sedang) di drag
                      shape: StadiumBorder(),
                      elevation: 0,
                    ),
                  ),
                  feedback: SizedBox(
                    // feedback digunakan untuk membuat widget yang akan muncul ketika widget sedang di drag
                    height: 50,
                    width: 50,
                    child: Material(
                      color: color2.withOpacity(
                        // withOpacity digunakan untuk mengatur opacity dari warna yang digunakan
                        0.6,
                      ), // memberikan warna pada widget ketika widget (sedang) di drag
                      shape: const StadiumBorder(),
                      elevation: 3,
                    ),
                  ),
                ),
                Draggable(
                  data: color1,
                  // ignore: sort_child_properties_last
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: color1,
                      shape: const StadiumBorder(),
                      elevation: 3,
                    ),
                  ),
                  childWhenDragging: const SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: Colors.lightBlue,
                      shape: StadiumBorder(),
                      elevation: 0,
                    ),
                  ),
                  feedback: SizedBox(
                    height: 50,
                    width: 50,
                    child: Material(
                      color: color1.withOpacity(0.6),
                      shape: const StadiumBorder(),
                      elevation: 3,
                    ),
                  ),
                ),
              ],
            ),
            DragTarget(
              // widget dragtarget digunakan untuk membuat widget yang dapat menerima widget yang di drag
              onWillAccept: (data) =>
                  true, // digunakan untuk mengecek apakah widget dapat diterima
              onAccept: (data) {
                // digunakan untuk mengecek apakah widget sudah diterima
                isAccepted =
                    true; // jika widget sudah diterima maka isAccepted akan bernilai true
                targetColor = data
                    as Color; // data yang diterima akan disimpan di variabel targetColor
              },
              builder: (context, candidateData, rejectedData) {
                // builder digunakan untuk membuat widget yang akan muncul ketika widget diterima
                return isAccepted // mengecek apakah widget sudah diterima
                    ? SizedBox(
                        // jika widget sudah diterima maka akan muncul widget ini
                        width: 100,
                        height: 100,
                        child: Material(
                          color: targetColor,
                          shape: const StadiumBorder(),
                          elevation: 0,
                        ),
                      )
                    : const SizedBox(
                        // jika widget belum diterima maka akan muncul widget ini
                        width: 100,
                        height: 100,
                        child: Material(
                          color: Colors.lime,
                          shape: StadiumBorder(),
                          elevation: 0,
                        ),
                      );
              },
            ),
          ],
        ),
      ),
    );
  }
}
