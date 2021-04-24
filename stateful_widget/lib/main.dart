import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //buat method untuk set statenya
  int num = 1;
  void tekanTombol() {
    setState(() {
      num += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan Stateful Widget"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(num.toString()), //panggil num
              MaterialButton(
                color: Colors.blue,
                height: 50,
                shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(5.0)),
                onPressed: tekanTombol, //taruh set statenya di sini
                child: Text("Tambah"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
