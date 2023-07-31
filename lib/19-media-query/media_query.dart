import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MediaQueryExample(),
    );
  }
}

class MediaQueryExample extends StatelessWidget {
  const MediaQueryExample({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MediaQuery Example'),
        backgroundColor: const Color.fromARGB(255, 61, 31, 131),
      ),
      body: (MediaQuery.of(context).orientation == Orientation.portrait)
          // MediaQuery.of(context).orientation == Orientation.landscape berfungsi untuk mengecek apakah orientasi layar adalah landscape atau portrait
          ? Column(
              // Jika orientasi layar adalah portrait maka akan menampilkan widget Column
              children: mediaQueryColumn(context),
            )
          : Row(
              // Jika orientasi layar adalah landscape maka akan menampilkan widget Row
              children: mediaQueryColumn(context),
            ),
    );
  }

  List<Widget> mediaQueryColumn(BuildContext context) {
    return <Widget>[
      Container(
        color: Colors.blue,
        height: MediaQuery.of(context).size.height /
            4, // Mengambil tinggi layar dan membaginya dengan 4
        width: MediaQuery.of(context).size.width /
            4, // Mengambil lebar layar dan membaginya dengan 4
      ),
      Container(
        color: Colors.red,
        height: MediaQuery.of(context).size.height / 4,
        width: MediaQuery.of(context).size.width / 4,
      ),
      Container(
        color: Colors.green,
        height: MediaQuery.of(context).size.height / 4,
        width: MediaQuery.of(context).size.width / 4,
      ),
    ];
  }
}
