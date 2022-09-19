import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:one_finance/mobile_varification.dart';
import 'package:one_finance/welcome.dart';
import 'package:google_fonts/google_fonts.dart';

class create_account extends StatefulWidget {
  const create_account({Key? key}) : super(key: key);

  @override
  State<create_account> createState() => _create_accountState();
}

class _create_accountState extends State<create_account> {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Container(
        child: Column(
      children: [
        Container(
            alignment: Alignment.topLeft,
            padding: EdgeInsets.only(
                top: screenHeight * 0.2, left: 20.0, right: 20.0),
            decoration: BoxDecoration(
                color: Color.fromRGBO(241, 240, 247, 1),
                border: Border.all(
                    width: 0, color: Color.fromRGBO(241, 240, 247, 1))),
            width: screenWidth,
            height: screenHeight / 3,
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Create Your Account",
                  style: GoogleFonts.mukta(
                      fontSize: 25.0,
                      decoration: TextDecoration.none,
                      color: Colors.black),
                ),
                Text(
                  "Enter your name , mobile no , email-id to signup",
                  style: GoogleFonts.mukta(
                      fontSize: 12.0,
                      decoration: TextDecoration.none,
                      color: Color.fromARGB(255, 39, 38, 38)),
                  textAlign: TextAlign.left,
                )
              ],
            )),
        Container(
            decoration: BoxDecoration(
                color: Color.fromRGBO(241, 240, 247, 1),
                border: Border.all(
                    width: 0, color: Color.fromRGBO(241, 240, 247, 1))),
            padding: EdgeInsets.only(left: 25.0, right: 25.0),
            width: screenWidth,
            height: screenHeight / 3,
            child: Material(
              child: Container(
                decoration: BoxDecoration(
                    color: Color.fromRGBO(241, 240, 247, 1),
                    border: Border.all(
                        width: 0, color: Color.fromRGBO(241, 240, 247, 1))),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Text(
                      //   "Enter Your Name",
                      //   textAlign: TextAlign.left,
                      //   style: TextStyle(
                      //     fontSize: 15.0,
                      //     color: Color.fromRGBO(129, 128, 129, 1),
                      //     decoration: TextDecoration.none,
                      //   ),
                      // ),
                      TextField(
                        autocorrect: false,
                        cursorRadius: Radius.circular(12.0),
                        // style: TextStyle(height: 25.0),
                        decoration: InputDecoration(
                          hintText: ' Name',
                          labelText: "Enter Your Name ",
                          // labelStyle: TextStyle(fontSize: 50.0),
                          fillColor: Color.fromRGBO(241, 240, 247, 1),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)),
                          floatingLabelStyle: GoogleFonts.mukta(
                              color: Colors.black, fontSize: 20.0),
                          contentPadding: EdgeInsets.fromLTRB(0, 0.0, 0, 0),
                        ),
                        textInputAction:
                            TextInputAction.next, // Moves focus to next.
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      TextField(
                        cursorRadius: Radius.circular(12.0),
                        decoration: InputDecoration(
                          hintText: 'Enter Your Mobile No ',
                          labelText: "Mobile No",
                          fillColor: Color.fromRGBO(241, 240, 247, 1),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)),
                          floatingLabelStyle: GoogleFonts.mukta(
                              color: Colors.black, fontSize: 20.0),
                        ),
                        textInputAction:
                            TextInputAction.next, // Moves focus to next.
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      // Text(
                      //   "Enter-id",
                      //   textAlign: TextAlign.left,
                      //   style: TextStyle(
                      //     fontSize: 15.0,
                      //     color: Color.fromRGBO(129, 128, 129, 1),
                      //     decoration: TextDecoration.none,
                      //   ),
                      // ),
                      TextField(
                        cursorRadius: Radius.circular(12.0),
                        decoration: InputDecoration(
                          hintText: 'Enter-id',
                          labelText: "Enter-id",
                          fillColor: Color.fromRGBO(241, 240, 247, 1),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)),
                          floatingLabelStyle: GoogleFonts.mukta(
                              color: Colors.black, fontSize: 20.0),
                          // contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0)
                        ),
                        textInputAction:
                            TextInputAction.next, // Moves focus to next.
                      ),
                    ]),
              ),
            )
            // decoration: new BoxDecoration(color: Colors.white),
            ),
        Container(
          decoration: BoxDecoration(
              color: Color.fromRGBO(241, 240, 247, 1),
              border: Border.all(
                  width: 0, color: Color.fromRGBO(241, 240, 247, 1))),
          width: screenWidth,
          height: screenHeight / 3.0,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  height: 50.0,
                  width: 250.0,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: ((context) => mobilevarification())));
                    },
                    child: Text('Submit'),
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromRGBO(38, 48, 129, 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(2), // <-- Radius
                      ),
                    ),
                  )),
              Container(
                // padding: EdgeInsets.only(left: screenWidth * 0.2),
                width: 250.0,
                alignment: Alignment.topLeft,
                child: Row(
                  children: [
                    Text(
                      'Already have an account?',
                      style: GoogleFonts.mukta(
                          decoration: TextDecoration.none,
                          fontSize: 12.0,
                          color: Color.fromARGB(255, 44, 43, 43)),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        primary: Colors.white,
                        // foreground
                      ),
                      onPressed: () async {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: ((context) => welcom())));
                      },
                      child: Text(
                        "SIGN IN",
                        style: GoogleFonts.mukta(
                          fontSize: 11.0,
                          color: Color.fromRGBO(95, 93, 210, 1),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          // decoration: new BoxDecoration(color: Colors.white),
        ),
      ],
    ));
  }
}
