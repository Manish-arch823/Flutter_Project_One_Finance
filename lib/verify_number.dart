import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:one_finance/password_reset_success.dart';
import 'package:one_finance/reset_pass.dart';

class verify_number extends StatefulWidget {
  verify_number({Key? key}) : super(key: key);

  @override
  State<verify_number> createState() => _verify_numberState();
}

class _verify_numberState extends State<verify_number> {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    bool _onEditing = true;
    late String _code;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
            width: screenWidth,
            height: screenHeight / 3,
            decoration: BoxDecoration(
                color: Color.fromRGBO(241, 240, 247, 1),
                border: Border.all(
                    width: 0, color: Color.fromRGBO(241, 240, 247, 1))),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 35.0, bottom: 4.0),
                  child: Text(
                    "Verify Number",
                    style: (screenWidth == 820 && screenHeight == 1180 ||
                            screenWidth == 768 && screenHeight == 1024 ||
                            screenWidth == 912 && screenHeight == 1368)
                        ? GoogleFonts.mukta(
                            fontSize: 38.0,
                            decoration: TextDecoration.none,
                            color: Colors.black)
                        : GoogleFonts.mukta(
                            fontSize: 20.0,
                            decoration: TextDecoration.none,
                            color: Colors.black),
                  ),
                ),
                ClipOval(
                  child: Material(
                      color: Color.fromRGBO(95, 93, 210, 1),
                      child: SizedBox.fromSize(
                          size: (screenWidth == 820 && screenHeight == 1180 ||
                                  screenWidth == 768 && screenHeight == 1024 ||
                                  screenWidth == 912 && screenHeight == 1368)
                              ? Size.fromRadius(70.0)
                              : Size.fromRadius(43.0),
                          child: Padding(
                            padding: EdgeInsets.all(5.0),
                            child: SvgPicture.asset(
                              'svg-img/mobile_message.svg',
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ))
                      // ),
                      ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                RichText(
                    text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                        text: 'Kindaly input the 4-digit Code code  we have',
                        style: GoogleFonts.mukta(
                            decoration: TextDecoration.none,
                            fontSize: (screenWidth == 820 &&
                                        screenHeight == 1180 ||
                                    screenWidth == 768 &&
                                        screenHeight == 1024 ||
                                    screenWidth == 912 && screenHeight == 1368)
                                ? 25.0
                                : 12.0,
                            color: Color.fromARGB(255, 61, 61, 61))),
                  ],
                )),
                RichText(
                    text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                        text: 'sant to at ',
                        style: GoogleFonts.mukta(
                            decoration: TextDecoration.none,
                            fontSize: (screenWidth == 820 &&
                                        screenHeight == 1180 ||
                                    screenWidth == 768 &&
                                        screenHeight == 1024 ||
                                    screenWidth == 912 && screenHeight == 1368)
                                ? 25.0
                                : 12.0,
                            color: Color.fromARGB(255, 61, 61, 61))),
                    TextSpan(
                        text: '+910-94060000000',
                        style: GoogleFonts.mukta(
                            decoration: TextDecoration.none,
                            fontSize: (screenWidth == 820 &&
                                        screenHeight == 1180 ||
                                    screenWidth == 768 &&
                                        screenHeight == 1024 ||
                                    screenWidth == 912 && screenHeight == 1368)
                                ? 25.0
                                : 12.0,
                            color: Color.fromARGB(255, 58, 92, 241)))
                  ],
                )),

                // Text(
                //     "Kindaly input the 4-digit Code code  we have \n sant to at + 91-94060000000 ",
                //     textAlign: TextAlign.center,
                //     style: GoogleFonts.mukta(
                //         decoration: TextDecoration.none,
                //         fontSize: (screenWidth == 820 &&
                //                     screenHeight == 1180 ||
                //                 screenWidth == 768 &&
                //                     screenHeight == 1024 ||
                //                 screenWidth == 912 && screenHeight == 1368)
                //             ? 25.0
                //             : 12.0,
                //         color: Color.fromARGB(255, 61, 61, 61))),
              ],
            )),
        Container(
          decoration: BoxDecoration(
              color: Color.fromRGBO(241, 240, 247, 1),
              border: Border.all(
                width: 0,
                color: Color.fromRGBO(241, 240, 247, 1),
              )),
          width: screenWidth,
          height: screenHeight / 3,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Material(
                child: Container(
                  // padding: EdgeInsets.only(top: 40.0, left: 40.0, right: 40.0),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(241, 240, 247, 1),
                  ),
                  child: VerificationCode(
                    underlineUnfocusedColor: Color.fromARGB(255, 24, 22, 22),
                    textStyle: Theme.of(context).textTheme.bodyText2!.copyWith(
                        color: Color.fromRGBO(95, 93, 210, 1), fontSize: 30.0),
                    keyboardType: TextInputType.number,
                    underlineColor: Colors.black,
                    length: 4,
                    itemSize: (screenWidth == 820 && screenHeight == 1180 ||
                            screenWidth == 768 && screenHeight == 1024 ||
                            screenWidth == 912 && screenHeight == 1368)
                        ? 50
                        : 40,
                    cursorColor: Colors.black,
                    clearAll: Padding(
                      padding: const EdgeInsets.only(
                          top: 8.0, left: 8.0, right: 8.0),
                      child: Text(
                        "Didn't received  the code",
                        style: (screenWidth == 820 && screenHeight == 1180 ||
                                screenWidth == 768 && screenHeight == 1024 ||
                                screenWidth == 912 && screenHeight == 1368)
                            ? GoogleFonts.mukta(
                                fontSize: 24.0,
                                color: Color.fromARGB(255, 61, 61, 61)
                                // decoration: TextDecoration.underline,
                                // ? color: Colors.blue[700]
                                )
                            : GoogleFonts.mukta(
                                fontSize: 12.0,
                                color: Color.fromARGB(255, 61, 61, 61)
                                // decoration: TextDecoration.underline,
                                // ? color: Colors.blue[700]
                                ),
                      ),
                    ),
                    onCompleted: (String value) {
                      setState(() {
                        _code = value;
                      });
                    },
                    onEditing: (bool value) {
                      setState(() {
                        _onEditing = value;
                      });
                      if (!_onEditing) FocusScope.of(context).unfocus();
                    },
                  ),
                ),
              ),
              Text("Resend Code",
                  textAlign: TextAlign.center,
                  style: (screenWidth == 820 && screenHeight == 1180 ||
                          screenWidth == 768 && screenHeight == 1024 ||
                          screenWidth == 912 && screenHeight == 1368)
                      ? GoogleFonts.mukta(
                          // decoration: TextDecoration.underline,
                          fontSize: 20.0,
                          color: Color.fromRGBO(95, 93, 210, 1),
                          decoration: TextDecoration.underline,
                          decorationColor: Color.fromARGB(255, 10, 149, 241),
                          decorationStyle: TextDecorationStyle.solid,
                          // ? color: Colors.blue[700]
                        )
                      : GoogleFonts.mukta(
                          // decoration: TextDecoration.underline,
                          fontSize: 15.0,
                          color: Color.fromRGBO(95, 93, 210, 1),
                          decoration: TextDecoration.underline,
                          decorationColor: Color.fromARGB(255, 10, 149, 241),
                          decorationStyle: TextDecorationStyle.solid,
                          // ? color: Colors.blue[700]
                        ))
            ],
          ),
        ),
        Container(
          decoration: new BoxDecoration(
              color: Color.fromRGBO(241, 240, 247, 1),
              border: Border.all(
                  width: 0, color: Color.fromRGBO(241, 240, 247, 1))),
          padding: EdgeInsets.all(50.0),
          width: screenWidth,
          height: screenHeight / 3,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  height: (screenWidth == 820 && screenHeight == 1180 ||
                          screenWidth == 768 && screenHeight == 1024 ||
                          screenWidth == 912 && screenHeight == 1368)
                      ? 60.0
                      : 50.0,
                  width: (screenWidth == 820 && screenHeight == 1180 ||
                          screenWidth == 768 && screenHeight == 1024 ||
                          screenWidth == 912 && screenHeight == 1368)
                      ? 400.0
                      : 250.0,
                  child: ElevatedButton(
                    onPressed: () async {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: ((context) => reset_pass())));
                    },
                    child: Text(
                      'Submit',
                      style: (screenWidth == 820 && screenHeight == 1180 ||
                              screenWidth == 768 && screenHeight == 1024 ||
                              screenWidth == 912 && screenHeight == 1368)
                          ? TextStyle(fontSize: 25.0)
                          : TextStyle(fontSize: 12.0),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromRGBO(38, 48, 129, 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(2), // <-- Radius
                      ),
                    ),
                  )),
              Container(
                // padding: EdgeInsets.only(left: screenWidth * 0.2),
                width: (screenWidth == 820 && screenHeight == 1180 ||
                        screenWidth == 768 && screenHeight == 1024 ||
                        screenWidth == 912 && screenHeight == 1368)
                    ? 400.0
                    : 250.0,
                alignment: Alignment.topLeft,
                child: Row(
                  children: [
                    Text(
                      'Already have an account?',
                      style: GoogleFonts.mukta(
                          decoration: TextDecoration.none,
                          fontSize: (screenWidth == 820 &&
                                      screenHeight == 1180 ||
                                  screenWidth == 768 && screenHeight == 1024 ||
                                  screenWidth == 912 && screenHeight == 1368)
                              ? 26.0
                              : 13.0,
                          color: Color.fromARGB(255, 44, 43, 43)),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        primary: Colors.white, // foreground
                      ),
                      onPressed: () async {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: ((context) => password_reset_success())));
                      },
                      child: Text(
                        "SIGN IN",
                        style: GoogleFonts.mukta(
                          color: Color.fromRGBO(95, 93, 210, 1),
                          fontSize: (screenWidth == 820 &&
                                      screenHeight == 1180 ||
                                  screenWidth == 768 && screenHeight == 1024 ||
                                  screenWidth == 912 && screenHeight == 1368)
                              ? 26.0
                              : 13.0,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
