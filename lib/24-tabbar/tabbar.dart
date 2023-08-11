import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        // DeafultTabController berfungsi untuk mengatur jumlah tab yang akan ditampilkan
        length: 4, // Jumlah tab yang akan ditampilkan
        child: Scaffold(
          appBar: AppBar(
            title: const Text('TabBar Widget'),
            bottom: const TabBar(
              // TabBar berfungsi untuk menampilkan tab
              tabs: [
                // Menampilkan tab
                Tab(
                  // Tab 1
                  icon: Icon(Icons.home),
                  text: 'Home',
                ),
                Tab(
                  // Tab 2
                  text: 'Setting',
                  icon: Image(
                    image: AssetImage('assets/images/settings.png'),
                    height: 25,
                    width: 25,
                  ),
                ),
                Tab(
                  // Tab 3
                  icon: Icon(Icons.search),
                ),
                Tab(
                  // Tab 4
                  text: 'Profile',
                ),
              ],
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
              const Center(
                // Konten tab 3
                child: Text('Search'),
              ),
              const Center(
                // Konten tab 4
                child: Text('Profile'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
