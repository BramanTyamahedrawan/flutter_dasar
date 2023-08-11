import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  MyApp({super.key});

  TabBar myTabbar = TabBar(
    // TabBar berfungsi untuk menampilkan tab
    tabs: const [
      // Menampilkan tab
      Tab(
        // Tab 1
        icon: Icon(Icons.home),
        text: 'Home',
      ),
      Tab(
        // Tab 2
        text: 'Settings',
      ),
    ],
    indicator: BoxDecoration(
        color: Colors.indigo[400],
        border: const Border(
          bottom: BorderSide(color: Colors.red, width: 2),
        ) // Mengatur border bawah dari tab

        ),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        // DeafultTabController berfungsi untuk mengatur jumlah tab yang akan ditampilkan
        length: 2, // Jumlah tab yang akan ditampilkan
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color.fromARGB(255, 61, 31, 131),
            title: const Text('TabBar Widget'),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(myTabbar.preferredSize.height),
              child: Container(color: Colors.indigo[800], child: myTabbar),
            ),
          ),
          body: TabBarView(
            // TabBarView berfungsi untuk menampilkan konten dari tab yang dipilih
            children: [
              // Menampilkan konten dari tab yang dipilih sesuai urutan
              const Center(
                // Konten tab 1
                child: Text('Home'),
              ),
              Center(
                // Konten tab 2
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image(
                      image: const AssetImage('assets/images/settings.png'),
                      height: MediaQuery.of(context).size.height / 3,
                      width: MediaQuery.of(context).size.width / 3,
                    ),
                    const Padding(padding: EdgeInsets.all(10)),
                    const Text('Setting'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
