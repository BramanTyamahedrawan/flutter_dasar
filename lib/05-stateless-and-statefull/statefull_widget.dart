import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  // StatefulWidget adalah widget yang memiliki state atau dapat berubah
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyApp> {
  var number = 0;

  void getNumber() {
    setState(() {
      number = number + 1;
    });
  }

  void minNumber() {
    setState(() {
      number -= 1;
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
                number.toString(),
                style: const TextStyle(fontSize: 25),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      getNumber();
                    },
                    child: const Icon(Icons.add),
                  ),
                  const Padding(padding: EdgeInsets.all(8)),
                  ElevatedButton(
                    onPressed: () {
                      minNumber();
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
