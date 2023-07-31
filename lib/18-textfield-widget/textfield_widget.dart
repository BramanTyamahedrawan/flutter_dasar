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
  TextEditingController controllerUsername = TextEditingController();
  // TextEditingController berfungsi untuk menangkap inputan dari TextField.
  // nilai awal variabel controllerUsername adalah kosong.

  TextEditingController controllerPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: const Text('TextField Widget'),
          backgroundColor: const Color.fromARGB(255, 61, 31, 131),
        ),
        body: Container(
          margin: const EdgeInsets.all(10.0),
          child: ListView(
            children: [
              // Cara 1 (tanpa Controller dan setState)
              Container(
                margin: const EdgeInsets.all(10.0),
                color: Colors.lightGreenAccent[100],
                child: Column(
                  children: [
                    const Text(
                      'Cara 1 (tanpa Controller dan setState)',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Padding(padding: EdgeInsets.all(5.0)),
                    Card(
                      child: TextField(
                        // widget TextField digunakan untuk membuat inputan teks.
                        // TextField diatas digunakan untuk membuat inputan teks yang berupa username.
                        decoration: InputDecoration(
                          hintText:
                              "Nama Lengkap", // hintText digunakan untuk menampilkan hint pada TextField.
                          prefixIcon:
                              const Icon(Icons.person, color: Colors.indigo),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            gapPadding:
                                8, // gapPadding digunakan untuk memberi jarak antara border dengan teks.
                          ),
                          labelText:
                              'Enter your username', // labelText digunakan untuk menampilkan label pada TextField.
                        ),
                      ),
                    ),
                    const Padding(padding: EdgeInsets.all(5.0)),
                    Card(
                      child: TextField(
                        // widget TextField digunakan untuk membuat inputan teks.
                        // TextField diatas digunakan untuk membuat inputan teks yang berupa password.
                        obscureText:
                            true, // obscureText digunakan untuk membuat inputan teks menjadi password
                        maxLength:
                            8, // maxLength digunakan untuk membatasi jumlah karakter yang diinputkan.
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.lock),
                          border: OutlineInputBorder(
                            gapPadding: 8,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          labelText:
                              'Enter your password', // labelText digunakan untuk menampilkan label pada TextField.
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // Cara 2 (dengan Controller dan setState)
              Container(
                margin: const EdgeInsets.all(10.0),
                color: Colors.amber[100],
                child: Column(
                  children: [
                    const Text(
                      'Cara 2 (dengan Controller dan setState)',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Padding(padding: EdgeInsets.all(5.0)),
                    Card(
                      child: TextField(
                        // widget TextField digunakan untuk membuat inputan teks.
                        // TextField diatas digunakan untuk membuat inputan teks yang berupa username.
                        controller:
                            controllerUsername, // controller digunakan untuk menangkap inputan dari TextField.
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Enter your username',
                        ),
                        onChanged: (value) {
                          // onChanged digunakan untuk mengubah nilai variabel controllerUsername.
                          // value adalah nilai yang diinputkan pada TextField berupa String.
                          setState(() {});
                          // setState digunakan untuk merefresh tampilan.
                        },
                      ),
                    ),
                    const Padding(padding: EdgeInsets.all(5.0)),
                    Card(
                      child: TextField(
                        // widget TextField digunakan untuk membuat inputan teks.
                        // TextField diatas digunakan untuk membuat inputan teks yang berupa password.
                        controller:
                            controllerPassword, // controller digunakan untuk menangkap inputan dari TextField.
                        obscureText:
                            true, // obscureText digunakan untuk membuat inputan teks menjadi password
                        maxLength:
                            8, // maxLength digunakan untuk membatasi jumlah karakter yang diinputkan.
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Enter your password',
                        ),
                        onChanged: (value) {
                          setState(() {});
                        },
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
