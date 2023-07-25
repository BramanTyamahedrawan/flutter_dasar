import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  // StatefulWidget adalah widget yang memiliki state atau dapat berubah-ubah
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyApp> {
  var number = 0; // variable number bertipe data integer

  void getNumber() {
    // method getNumber digunakan untuk menambahkan nilai number
    setState(() {
      number = number + 1;
    });
  }

  void minNumber() {
    // method minNumber digunakan untuk mengurangi nilai number
    setState(() {
      number -= 1; // sama dengan number = number - 1
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 61, 12, 131),
          title: const Text('Statefull Widget'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                // widget Text digunakan untuk menampilkan teks
                number
                    .toString(), // method toString() digunakan untuk mengubah tipe data number menjadi string
                style: const TextStyle(fontSize: 25),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      getNumber(); // memanggil method getNumber
                    },
                    child: const Icon(Icons.add),
                  ),
                  const Padding(padding: EdgeInsets.all(8)),
                  ElevatedButton(
                    onPressed: () {
                      minNumber(); // memanggil method minNumber
                    },
                    child: const Icon(Icons.remove),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
