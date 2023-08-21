import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
// import library qr_flutter untuk membuat QR Code yang telah ditambahkan pada pubspec.yaml

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('QR Code'),
          backgroundColor: const Color.fromARGB(255, 61, 31, 131),
        ),
        body: Center(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.red,
                    width: 2,
                  ),
                ),
                child: Column(
                  children: [
                    const Text(
                      'QR Code',
                      style: TextStyle(fontSize: 30),
                    ),
                    Container(
                      margin: const EdgeInsets.all(20),
                      child: QrImageView(
                        // QrImage berfungsi untuk menampilkan QR Code
                        data:
                            'https://github.com/BramanTyamahedrawan', // data yang diubah menjadi QR Code
                        version: QrVersions // versi QR Code
                            .auto, // bisa juga version: antara 1 sampai 40
                        size: 200.0,
                        backgroundColor: Colors.grey.shade200,
                        eyeStyle: const QrEyeStyle(
                          // style foreground QR Code
                          eyeShape: QrEyeShape
                              .square, // eye shape berfungsi untuk mengatur bentuk eye QR Code
                          color: Colors.black,
                        ),
                        errorCorrectionLevel: QrErrorCorrectLevel
                            .M, // error correction level berfungsi untuk mengatur tingkat kegagalan QR Code
                        // error correction level terdiri dari 4 tingkatan yaitu: L, M, Q, H
                      ),
                    )
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
