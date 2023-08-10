import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding
      .ensureInitialized(); // berfungsi untuk memastikan bahwa semua widget telah diinisialisasi
  SystemChrome.setPreferredOrientations(
    // berfungsi untuk mengatur orientasi perangkat
    [
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown
    ], // mengatur orientasi perangkat menjadi potrait saja meskipun perangkat diputar
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false, // menghilangkan banner debug
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  double getSmallDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 2 / 3;
  // getSmallDiameter berfungsi untuk mengambil nilai diameter kecil dari layar perangkat
  double getBigDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 7 / 8;
  // getBigDiameter berfungsi untuk mengambil nilai diameter besar dari layar perangkat

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEEEEEE),
      body: Stack(
        children: [
          // bagian ini berfungsi untuk menampilkan widget yang berada di latar belakang
          positionedSmallCircle(context),
          positionedBigCircleTop(context),
          positionedBigCircleBottom(context),
          alignListView(context)
        ],
      ),
    );
  }

  Align alignListView(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: ListView(
        children: [
          containerTextField(),
          containerForgotPassword(),
          containerFloatingActionButton(context),
          rowTextButton(),
        ],
      ),
    );
  }

  Row rowTextButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "DON'T HAVE AN ACCOUNT? ",
          style: TextStyle(
            fontSize: 16,
            color: Colors.grey,
            fontWeight: FontWeight.w500,
          ),
        ),
        TextButton(
          onPressed: () {},
          child: const Text(
            "SIGN UP",
            style: TextStyle(
              fontSize: 16,
              color: Colors.pink,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ],
    );
  }

  Container containerFloatingActionButton(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(20, 0, 20, 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.5,
            height: 50,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: const LinearGradient(
                  colors: [Color(0xFFB226B2), Color(0xFFFF6DA7)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Material(
                borderRadius: BorderRadius.circular(10),
                color: Colors.transparent,
                child: InkWell(
                  borderRadius: BorderRadius.circular(10),
                  onTap: () {},
                  child: const Center(
                    child: Text(
                      "SIGN IN",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          FloatingActionButton(
            onPressed: () {},
            mini: true,
            elevation: 0,
            child: const Image(
              image: NetworkImage(
                  "https://ipresto.net/wp-content/uploads/2018/08/facebook.png"),
            ),
          ),
          FloatingActionButton(
            onPressed: () {},
            elevation: 0,
            child: const Image(
              image: NetworkImage(
                  "https://www.imagensempng.com.br/wp-content/uploads/2020/12/Logo-Twitter-Png-1024x1024.png"),
            ),
          ),
        ],
      ),
    );
  }

  Align containerForgotPassword() {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        margin: const EdgeInsets.fromLTRB(0, 0, 20, 20),
        child: TextButton(
          onPressed: () {},
          child: const Text(
            "FORGOT PASSWORD?",
            style: TextStyle(
              color: Colors.pink,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }

  Container containerTextField() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(5),
      ),
      margin: const EdgeInsets.fromLTRB(20, 300, 20, 10),
      padding: const EdgeInsets.fromLTRB(10, 0, 10, 25),
      child: const Column(
        children: [
          TextField(
            decoration: InputDecoration(
              icon: Icon(Icons.email),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.pink),
              ),
              labelText: "Email",
              labelStyle: TextStyle(color: Colors.pink),
            ),
          ),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              icon: Icon(Icons.vpn_key),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.pink),
              ),
              labelText: "Password",
              labelStyle: TextStyle(color: Colors.pink),
            ),
          ),
        ],
      ),
    );
  }

  Positioned positionedBigCircleBottom(BuildContext context) {
    return Positioned(
      // Positioned berfungsi untuk menempatkan widget ke posisi yang diinginkan
      right: -getBigDiameter(context) / 2, // mengatur posisi widget ke kiri
      bottom: -getBigDiameter(context) / 2, // mengatur posisi widget ke atas
      child: Container(
        width: getBigDiameter(context),
        height: getBigDiameter(context),
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Color(0xFFF3E9EE),
        ),
      ),
    );
  }

  Positioned positionedBigCircleTop(BuildContext context) {
    return Positioned(
      // Positioned berfungsi untuk menempatkan widget ke posisi yang diinginkan
      left: -getBigDiameter(context) / 4, // mengatur posisi widget ke kiri
      top: -getBigDiameter(context) / 4, // mengatur posisi widget ke atas
      child: Container(
        width: getBigDiameter(context),
        height: getBigDiameter(context),
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            colors: [Color(0xFFB226B2), Color(0xFFFF4891)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: const Center(
          child: Text(
            "Pacifico",
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
              fontFamily: 'Pacifico',
            ),
          ),
        ),
      ),
    );
  }

  Positioned positionedSmallCircle(BuildContext context) {
    return Positioned(
      // Positioned berfungsi untuk menempatkan widget ke posisi yang diinginkan
      right: -getSmallDiameter(context) / 3, // mengatur posisi widget ke kanan
      top: -getSmallDiameter(context) / 3, // mengatur posisi widget ke atas
      child: Container(
        width: getSmallDiameter(context),
        height: getSmallDiameter(context),
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            colors: [Color(0xFFB226B2), Color(0xFFFF6DA7)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
      ),
    );
  }
}
