import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: size.width,
          height: size.height,
          child: SingleChildScrollView(
            child: Stack(
              children: [
                Container(
                  child: Image.network('https://i.postimg.cc/bNLjncNR/mona-eendra-f-Io-Q-a-Rycys-unsplash.jpg'),
                  //'https://i.postimg.cc/vTBFTJv2/laurin-scheuber-s-LNMo7wv74-unsplash.jpg'),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 100, left: 30),
                  child: Text("Hello.",
                      style: GoogleFonts.poppins(
                          fontSize: 50,
                          color: Colors.orange[900],
                          fontWeight: FontWeight.bold)),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 160, left: 30),
                  child: Text(
                    "Create your account",
                    style: GoogleFonts.poppins(
                        fontSize: 35,
                        color: Colors.orange[900],
                        fontWeight: FontWeight.w500),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 300),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.yellow[50],
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(60),
                            topRight: Radius.circular(60))),
                    width: double.infinity,
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          SizedBox(
                            height: 15,
                          ),
                          Center(
                            child: Text(
                              "Log In",
                              style: GoogleFonts.roboto(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                                filled: true,
                                fillColor: Color(0xffedffee),
                                border: UnderlineInputBorder(
                                    borderSide: BorderSide.none),
                                labelText: "Email",
                                labelStyle: GoogleFonts.roboto(
                                    color: Color(0xff29d65a).withOpacity(0.7),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 17)),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                                filled: true,
                                fillColor: Color(0xffedffee),
                                border: UnderlineInputBorder(
                                    borderSide: BorderSide.none),
                                labelText: "Password",
                                labelStyle: GoogleFonts.roboto(
                                    color: Color(0xff29d65a).withOpacity(0.7),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 17),
                                suffixIcon: Icon(Icons.remove_red_eye_rounded,
                                    color: Color(0xff29d65a).withOpacity(0.4))),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Center(
                            child: FlatButton(
                              onPressed: null,
                              child: Material(
                                elevation: 10,
                                borderRadius: BorderRadius.circular(10),
                                child: Container(
                                  width: 180,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      gradient: LinearGradient(
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight,
                                          colors: [
                                            Colors.greenAccent[400],
                                            Colors.blueAccent[700]
                                          ])),
                                  child: Center(
                                    child: Text(
                                      "Log In",
                                      style: GoogleFonts.roboto(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 1),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Divider(
                                  height: 20,
                                  thickness: 2,
                                  indent: 30,
                                  color: Colors.grey[400],
                                ),
                              ),
                              Text("Don't have an Account?",
                                  style: GoogleFonts.roboto(
                                      color: Colors.grey[700])),
                              Expanded(
                                child: Divider(
                                  height: 20,
                                  thickness: 2,
                                  indent: 30,
                                  color: Colors.grey[400],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Center(
                            child: Row(
                              children: [
                                Material(
                                  elevation: 10,
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.network(
                                      'https://i.postimg.cc/6qMTfNpM/google-symbol.png',
                                      height: 25,
                                      width: 25
                                  ),
                                ),
                                SizedBox(width: 20,),
                                Material(
                                  elevation: 10,
                                  borderRadius: BorderRadius.circular(10),
                                  child: Padding(padding: EdgeInsets.all(4),
                                  child: Image.network('https://i.postimg.cc/wT9GtYNS/twitter-4.png', height: 25, width: 25,)),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
