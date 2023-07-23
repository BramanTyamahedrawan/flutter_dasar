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
  List<Widget> listData = []; // listData berfungsi untuk menampung data dinamis
  int counter = 1; // counter berfungsi untuk menghitung jumlah data

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 61, 12, 131),
          title: const Text('ListView Widget'),
        ),
        body: ListView(
          // widget ListView berfungsi agar data yang ditampilkan dapat di scroll
          children: [
            const Padding(
              padding: EdgeInsets.all(10),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        listData.add(
                          // method add berfungsi untuk menambahkan data ke listData
                          Container(
                            color: Colors.lime[100],
                            child: Text(
                              'Data ke-$counter', // menampilkan data ke-n
                              style: const TextStyle(
                                  fontSize: 25, fontFamily: "Oswald"),
                            ),
                          ),
                        );
                        counter++; // menambahkan nilai counter
                      });
                    },
                    child: const Text('Add Data')),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        listData
                            .removeLast(); // method removeLast berfungsi untuk menghapus data terakhir
                        counter--; // mengurangi nilai counter
                      });
                    },
                    child: const Text('Remove Data')),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: listData, // menampilkan data yang ada di listData
              ),
            )
          ],
        ),
      ),
    );
  }
}
