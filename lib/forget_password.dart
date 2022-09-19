import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:one_finance/verify_number.dart';

class forget_password extends StatefulWidget {
  forget_password({Key? key}) : super(key: key);

  @override
  State<forget_password> createState() => _forget_passwordState();
}

class _forget_passwordState extends State<forget_password> {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Container(
            height: screenHeight / 3,
            width: screenWidth,
            decoration: BoxDecoration(
                color: Color.fromRGBO(241, 240, 247, 1),
                border: Border.all(
                    width: 0, color: Color.fromRGBO(241, 240, 247, 1))),
            alignment: Alignment.topLeft,
            padding: EdgeInsets.only(
              right: 25.0,
              left: 25.0,
              top: 30.0,
            ),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 25.0),
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Forget password",
                    style: GoogleFonts.mukta(
                        fontSize: 30.0,
                        color: Colors.black,
                        decoration: TextDecoration.none),
                  ),
                ),
                SizedBox(height: 30.0),
                Material(
                  child: TextField(
                    decoration: InputDecoration(
                        fillColor: Color.fromRGBO(241, 240, 247, 1),
                        filled: true,
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                        hintText: 'Enter phone number ',
                        labelText: 'Enter phone number',
                        floatingLabelStyle: GoogleFonts.mukta(
                            color: Colors.black, fontSize: 25.0),
                        contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0)),
                    textInputAction:
                        TextInputAction.next, // Moves focus to next.
                  ),
                ),
              ],
            )),
        Container(
          width: screenWidth,
          height: screenHeight / 1.5,
          decoration: BoxDecoration(
              color: Color.fromRGBO(241, 240, 247, 1),
              border: Border.all(
                  width: 0, color: Color.fromRGBO(241, 240, 247, 1))),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: Container(
                    decoration: new BoxDecoration(
                      color: Colors.white,
                    ),
                    height: 50.0,
                    width: 250.0,
                    child: ElevatedButton(
                      onPressed: () async {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: ((context) => verify_number())));
                      },
                      child: Text('Submit'),
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromRGBO(38, 48, 129, 1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(2), // <-- Radius
                        ),
                      ),
                    )),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
