import 'package:flutter/material.dart';

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
        backgroundColor: const Color.fromARGB(255, 61, 12, 131),
        title: const Text('Text Widget'),
      ),
      body: Center(
        child: Container(
          color: Colors.lightBlue,
          width: 150,
          height: 50,
          // disinilah kita menggunakan widget Text
          child: const Text(
            // text widget memiliki properti yang dapat diatur seperti style, textAlign, dan lain-lain
            'Hello!, saya sedang melatih kemampuan framework flutter',
            maxLines: 2, // maxLines untuk menentukan jumlah baris

            overflow:
                TextOverflow // overflow untuk menentukan bagaimana teks yang tidak muat ditampilkan
                    .ellipsis, // ellipsis untuk menampilkan titik tiga di akhir teks yang menandakan teks tersebut tidak terpotong
            //.clip, // clip untuk memotong teks yang terpotong tanpa tanda

            softWrap:
                false, // softWrap untuk menentukan apakah teks dapat melingkar ke baris baru, default nilai true

            textAlign: TextAlign
                .center, // textAlign untuk menentukan posisi teks, defaultnya adalah TextAlign.start

            style: TextStyle(
              // style untuk mengatur atau mengubah style teks
              color: Colors.white, // color untuk mengubah warna teks
              fontSize: 20, // fontSize untuk mengubah ukuran teks
              fontStyle: FontStyle.italic, // fontStyle untuk mengubah gaya teks
              fontWeight:
                  FontWeight.w400, // fontWeight untuk mengubah ketebalan teks
            ),
            // dan masih banyak lagi properti yang dapat diatur pada widget Text
          ),
          // batas akhir widget Text
        ),
      ),
    ));
  }
}
