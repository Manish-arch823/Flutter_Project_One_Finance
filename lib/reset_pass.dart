import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:one_finance/password_reset_success.dart';

class reset_pass extends StatefulWidget {
  reset_pass({Key? key}) : super(key: key);

  @override
  State<reset_pass> createState() => _reset_passState();
}

class _reset_passState extends State<reset_pass> {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: screenWidth,
            height: screenHeight / 2,
            decoration: BoxDecoration(
                color: Color.fromRGBO(241, 240, 247, 1),
                border: Border.all(
                    width: 0, color: Color.fromRGBO(241, 240, 247, 1))),
            alignment: Alignment.topLeft,
            padding: EdgeInsets.only(
                top: 40.0, left: 20.0, right: 20.0, bottom: 30.0),
            child: Material(
              color: Color.fromRGBO(241, 240, 247, 1),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Forget password",
                    style: GoogleFonts.mukta(
                        color: Colors.black,
                        decoration: TextDecoration.none,
                        fontSize: 30.0),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  TextField(
                    autocorrect: false,
                    obscureText: true,
                    cursorRadius: Radius.circular(20.0),
                    // obscureText: false,
                    // style: TextStyle(height: 25.0),
                    decoration: InputDecoration(
                      hintText: 'Enter Password',
                      labelText: 'Enter Password',
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black)),
                      // border:
                      //     OutlineInputBorder(borderSide: BorderSide.none),
                      floatingLabelStyle: GoogleFonts.mukta(
                          color: Colors.black, fontSize: 20.0),
                      contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    ),
                    textInputAction:
                        TextInputAction.next, // Moves focus to next.
                  ),
                  SizedBox(height: 20.0),
                  TextField(
                    // autocorrect: false,
                    obscureText: true,
                    cursorRadius: Radius.circular(20.0),
                    // style: TextStyle(height: 25.0),
                    decoration: InputDecoration(
                      hintText: 'Re-Enter Password',
                      labelText: 'Re-Enter Password',
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black)),
                      // border:
                      //     OutlineInputBorder(borderSide: BorderSide.none),
                      floatingLabelStyle: GoogleFonts.mukta(
                          color: Colors.black, fontSize: 20.0),
                      contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    ),
                    textInputAction:
                        TextInputAction.next, // Moves focus to next.
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Center(
                    child: Container(
                        height: 50.0,
                        width: 250.0,
                        child: ElevatedButton(
                          onPressed: () async {
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: ((context) =>
                                        password_reset_success())));
                          },
                          child: Text('Submit'),
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromRGBO(38, 48, 129, 1),
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(2), // <-- Radius
                            ),
                          ),
                        )),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: screenWidth,
            height: screenHeight / 2,
            decoration: BoxDecoration(
                color: Color.fromRGBO(241, 240, 247, 1),
                border: Border.all(
                    width: 0, color: Color.fromRGBO(241, 240, 247, 1))),
          )
        ],
      ),
    );
  }
}
