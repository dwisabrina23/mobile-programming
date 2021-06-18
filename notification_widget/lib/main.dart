import 'dart:html';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //key untuk snack bar
  final _messangerKey = GlobalKey<ScaffoldMessengerState>();
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scaffoldMessengerKey: _messangerKey,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          title: Text('Latihan Notification'),
        ),
        body: Center(
          child: Builder(builder: (context) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                MaterialButton(
                  color: Colors.teal,
                  splashColor: Colors.teal[100],
                  onPressed: () {
                    showToast();
                  },
                  child: Text('Show Toast'),
                ),

                SizedBox(height: 20,),

                //untuk snackbar
                MaterialButton(
                  color: Colors.indigo,
                  splashColor: Colors.indigo[100],
                  onPressed: () {
                    showSnackbar();
                  },
                  child: Text('Show Snackbar'),
                ),

                SizedBox(height: 20,),

                //button unutk alert
                MaterialButton(
                  color: Colors.pink,
                  splashColor: Colors.pink[100],
                  onPressed: () {
                    showAlert(context);
                  },
                  child: Text('Show Alert'),
                ),
              ],
            );
          }),
        ),
      ),
    );
  }

  void showToast() {
    setState(() {
      Fluttertoast.showToast(
        msg: 'This is notification from toast',
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
      );
    });
  }

  void showSnackbar() {
    _messangerKey.currentState!.showSnackBar(SnackBar(
      content: Text('This is notification from Snackbar'),
      duration: Duration(seconds: 5),
      action: SnackBarAction(
        label: 'Undo',
        onPressed: () {},
      ),
    ));
    // _scaffoldKey.currentState.showSnackBar(snackbar);
  }

  void showAlert(BuildContext context) {
    setState(() {
      Widget buttonOK = MaterialButton(
        child: Text('OK'),
        onPressed: (){
          Navigator.of(context).pop();
        });

      Widget buttonCancel = MaterialButton(
        child: Text('Cancel'),
        onPressed: (){
          Navigator.of(context).pop();
        });

        AlertDialog alert = AlertDialog(
          title: Text('Simple Alert'),
          content: Text('This is Alert Message'),
          actions: [
            buttonOK,
            buttonCancel
          ],
        );
        showDialog(
          context: context, 
          builder: (BuildContext context){
            return alert;
          }
        );

    });
  }
}
