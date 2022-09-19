import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class account_created extends StatefulWidget {
  account_created({Key? key}) : super(key: key);

  @override
  State<account_created> createState() => _account_createdState();
}

class _account_createdState extends State<account_created> {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              color: Color.fromRGBO(241, 240, 247, 1),
              border: Border.all(
                  width: 0, color: Color.fromRGBO(241, 240, 247, 1))),
          width: screenWidth,
          height: screenHeight / 1.5,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromARGB(255, 62, 63, 62),
                          offset: Offset(0, 3),
                          blurRadius: 2.0,
                          spreadRadius: 2.0)
                    ],
                  ),
                  child: ClipOval(
                    child: Material(
                        // color: Color.fromARGB(255, 240, 237, 237),
                        child: SizedBox.fromSize(
                            size: Size.fromRadius(50.0),
                            child: Padding(
                              padding: EdgeInsets.all(13.0),
                              child: SvgPicture.asset(
                                'svg-img/checked.svg',
                                width: 300,
                                height: 300,
                                fit: BoxFit.cover,
                              ),
                            ))),
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Text(
                "Account Created",
                style: GoogleFonts.mukta(
                    decoration: TextDecoration.none,
                    fontSize: 30.0,
                    color: Colors.black),
              ),
              SizedBox(
                height: 15.0,
              ),
              Text(
                "Your account has been created successfully. \n click proceed to log in to your account",
                textAlign: TextAlign.center,
                style: GoogleFonts.mukta(
                    decoration: TextDecoration.none,
                    fontSize: 12.0,
                    color: Color.fromARGB(255, 136, 134, 134)),
              )
            ],
          ),
        ),
        Container(
          width: screenWidth,
          height: screenHeight / 3,
          decoration: BoxDecoration(
              color: Color.fromRGBO(241, 240, 247, 1),
              border: Border.all(
                  width: 0, color: Color.fromRGBO(241, 240, 247, 1))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  decoration: new BoxDecoration(
                    color: Colors.white,
                  ),
                  height: 50.0,
                  width: 250.0,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Proceed'),
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromRGBO(38, 48, 129, 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(1), // <-- Radius
                      ),
                    ),
                  )),
            ],
          ),
        ),
      ],
    );
  }
}
