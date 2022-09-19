import 'dart:ui';

import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'package:one_finance/screen/home/home_page_1.dart';

import 'package:animated_button/animated_button.dart';
import 'create_your_account.dart';
import 'forget_password.dart';
import 'logo.dart';
import 'package:google_fonts/google_fonts.dart';

class welcom extends StatefulWidget {
  welcom({Key? key}) : super(key: key);

  @override
  _welcomState createState() => _welcomState();
}

class _welcomState extends State<welcom> {
  @override
  Widget build(BuildContext context) {
    final isKeyboard = MediaQuery.of(context).viewInsets.bottom != 0;
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    TextEditingController nameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return SingleChildScrollView(
      reverse: true,
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Container(
          decoration: new BoxDecoration(
              color: Color.fromRGBO(241, 240, 247, 1),
              border: Border.all(
                  width: 0, color: Color.fromRGBO(241, 240, 247, 1))),
          width: screenWidth, height: screenHeight / 2.4,
          // color: Colors.red,
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: SizedBox(
                  height: 90.0,
                  width: 90.0,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Image.asset('images/logo1.png'),
                  ),
                ),
              ),
              Text(
                'One Finance',
                style: GoogleFonts.mukta(
                    decoration: TextDecoration.none,
                    fontSize: 30.0,
                    color: Color.fromRGBO(98, 96, 210, 1)),
              )
            ],
          )),
        ),
        Container(
            decoration: new BoxDecoration(
                color: Color.fromRGBO(241, 240, 247, 1),
                border: Border.all(
                    width: 0, color: Color.fromRGBO(241, 240, 247, 1))),
            width: screenWidth,
            height: (!isKeyboard) ? screenHeight / 1.7 : screenHeight / 1.5,
            alignment: Alignment.topLeft,
            padding: EdgeInsets.only(left: 20.0, right: 20.0),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                alignment: Alignment.topLeft,
                child: Text(
                  "Welcome,",
                  style: GoogleFonts.mukta(
                      decoration: TextDecoration.none,
                      fontSize: 30.0,
                      color: Color.fromRGBO(67, 67, 67, 1)),
                ),
              ),
              Container(
                // decoration: new BoxDecoration(color: Colors.white),
                alignment: Alignment.topLeft,
                child: Text(
                  "Sign in to Continue",
                  style: GoogleFonts.mukta(
                      decoration: TextDecoration.none,
                      fontSize: 15.0,
                      color: Color.fromRGBO(77, 77, 77, 1)),
                ),
              ),
              SingleChildScrollView(
                child: Material(
                  child: Container(
                    // alignment: Alignment.topLeft,
                    padding: EdgeInsets.only(top: 10.0),
                    decoration: new BoxDecoration(
                        color: Color.fromRGBO(241, 240, 247, 1)),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Email",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 15.0,
                              color: Color.fromRGBO(129, 128, 129, 1),
                              decoration: TextDecoration.none,
                            ),
                          ),
                          TextField(
                            autocorrect: false,
                            cursorRadius: Radius.circular(20.0),
                            // style: TextStyle(height: 25.0),
                            decoration: InputDecoration(
                              hintText: 'Enter Your Email',
                              // labelText: 'Email',
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black)),
                              // border:
                              //     OutlineInputBorder(borderSide: BorderSide.none),
                              floatingLabelStyle: GoogleFonts.mukta(
                                  color: Color.fromRGBO(137, 136, 138, 1),
                                  fontSize: 20.0),
                              contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                            ),
                            textInputAction:
                                TextInputAction.next, // Moves focus to next.
                          ),
                          const SizedBox(
                            height: 16.0,
                          ),
                          const Text(
                            "Password",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 15.0,
                              color: Color.fromRGBO(129, 128, 129, 1),
                              decoration: TextDecoration.none,
                            ),
                          ),
                          TextField(
                            decoration: InputDecoration(
                                hintText: 'Enter Your Password',
                                // labelText: 'Password',
                                focusedBorder: const UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.white)),
                                floatingLabelStyle: GoogleFonts.mukta(
                                    color: Color.fromRGBO(137, 136, 138, 1),
                                    fontSize: 20.0),
                                contentPadding:
                                    EdgeInsets.fromLTRB(0, 0, 0, 0)),
                            textInputAction: TextInputAction.next,
                            obscureText: true, // Moves focus to next.
                          ),
                          Container(
                              padding: EdgeInsets.only(top: 5.0),
                              alignment: Alignment.topLeft,
                              child: TextButton(
                                style: TextButton.styleFrom(
                                  primary: Color.fromRGBO(
                                      223, 225, 236, 1), // foreground
                                ),
                                onPressed: () async {
                                  Navigator.of(context).pushReplacement(
                                      MaterialPageRoute(
                                          builder: ((context) =>
                                              forget_password())));
                                },
                                child: Text(
                                  "Forgot password?",
                                  textAlign: TextAlign.left,
                                  style: GoogleFonts.mukta(
                                    color: Color.fromRGBO(129, 128, 129, 1),
                                  ),
                                ),
                              )),
                          SizedBox(
                            height: 35.0,
                          ),
                          Container(
                              height: 50.0,
                              width: 250.0,
                              child: ElevatedButton(
                                onPressed: () async {
                                  Navigator.of(context).pushReplacement(
                                      MaterialPageRoute(
                                          builder: ((context) =>
                                              home_page_1())));
                                },
                                child: Text('Submit'),
                                style: ElevatedButton.styleFrom(
                                  primary: Color.fromRGBO(38, 49, 129, 1),
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(2), // <-- Radius
                                  ),
                                ),
                              )),
                          // Text("Don't have an account?"),
                          TextButton(
                            style: TextButton.styleFrom(
                              primary: Color.fromRGBO(
                                  223, 225, 236, 1), // foreground
                            ),
                            onPressed: () async {
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                      builder: ((context) =>
                                          create_account())));
                            },
                            child: Text(
                              "Don't have an account?",
                              style: GoogleFonts.mukta(
                                color: Color.fromRGBO(125, 124, 217, 1),
                              ),
                            ),
                          )
                        ]),
                  ),
                ),
              ),
            ])),
      ]),
    );
  }
}
