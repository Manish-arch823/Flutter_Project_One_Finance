// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:sizer/sizer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:one_finance/welcome.dart';
import 'package:rounded_button/rounded_button.dart';

class get_Started_image extends StatelessWidget {
  const get_Started_image({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Container(
      decoration: BoxDecoration(
          color: Color.fromRGBO(241, 240, 247, 1),
          border:
              Border.all(width: 0, color: Color.fromRGBO(241, 240, 247, 1))),
      child: Column(children: [
        Padding(
          padding: EdgeInsets.only(top: 50.0),
          child: const SizedBox(
            width: 100.0,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              color: Color.fromRGBO(95, 93, 210, 1),
              child: Text(
                'O',
                style: TextStyle(
                    color: Colors.white,
                    // fontSize: 43.0,
                    fontFamily: 'roboto',
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
                textScaleFactor: 6,
              ),
            ),
          ),
        ),
        SizedBox(
          height: screenHeight * 0.04,
        ),
        Text('Welcome to One Finance \n Finance of your needs ',
            textAlign: TextAlign.center,
            style: (screenHeight == 1180 && screenWidth == 820 ||
                    screenHeight == 1024 && screenWidth == 768 ||
                    screenHeight == 1368 && screenWidth == 912)
                ? (screenHeight == 844 && screenWidth == 390)
                    ? GoogleFonts.mukta(
                        decoration: TextDecoration.none,
                        fontSize: 58,
                        color: Color.fromRGBO(
                          95,
                          93,
                          210,
                          1,
                        ))
                    : GoogleFonts.mukta(
                        decoration: TextDecoration.none,
                        fontSize: 40,
                        color: Color.fromRGBO(
                          95,
                          93,
                          210,
                          1,
                        ))
                : GoogleFonts.mukta(
                    decoration: TextDecoration.none,
                    fontSize: 20,
                    color: Color.fromRGBO(
                      95,
                      93,
                      210,
                      1,
                    ))),
        SizedBox(
          height: (screenHeight == 851 && screenWidth == 393 ||
                  screenHeight == 740 && screenWidth == 360 ||
                  screenHeight == 915 && screenWidth == 412 ||
                  screenHeight == 1180 && screenWidth == 820 ||
                  screenHeight == 1024 && screenWidth == 768 ||
                  screenHeight == 1368 && screenWidth == 912 ||
                  screenHeight == 914 && screenWidth == 412)
              // ? screenHeight * 0.3
              ? 260.0
              : (screenHeight == 600 && screenWidth == 1024)
                  ? 150
                  : (screenHeight == 1368 && screenWidth == 912)
                      ? 400
                      : 200.0,
        ),
        // Container(
        //     child: SizedBox.fromSize(
        //   // size: Size.fromRadius(50.0), // Image radius
        //   child: CircleAvatar(
        //     backgroundImage: AssetImage(
        //       'images/shopping_5.png',
        //     ),
        //     radius: 44.0,
        //   ),
        // )),
        // SizedBox(
        //   height: (screenHeight == 851 && screenWidth == 393 ||
        //           screenHeight == 740 && screenWidth == 360 ||
        //           screenHeight == 915 && screenWidth == 412 ||
        //           screenHeight == 1180 && screenWidth == 820 ||
        //           screenHeight == 1024 && screenWidth == 768 ||
        //           screenHeight == 1368 && screenWidth == 912 ||
        //           screenHeight == 914 && screenWidth == 412 ||
        //           screenHeight == 896 && screenWidth == 414)
        //       ? 80.0
        //       : (screenHeight == 600 && screenWidth == 1024)
        //           ? 30
        //           : 50.0,
        // ),
        RoundedButton(
          padding: (screenHeight == 1180 && screenWidth == 820 ||
                  screenHeight == 1024 && screenWidth == 768 ||
                  screenHeight == 1368 && screenWidth == 912)
              ? EdgeInsets.only(
                  top: 15.0, bottom: 15.0, left: 100.0, right: 100.0)
              : EdgeInsets.only(
                  top: 13.0, bottom: 13.0, left: 70.0, right: 70.0),
          primaryColor: Color.fromRGBO(38, 48, 129, 1),
          backgroundColor: Color.fromRGBO(38, 48, 129, 1),
          text: 'GET STARTED ',
          textColor: Colors.white,
          textStyle: (screenHeight == 1180 && screenWidth == 820 ||
                  screenHeight == 1024 && screenWidth == 768 ||
                  screenHeight == 1368 && screenWidth == 912 ||
                  screenHeight == 414 && screenWidth == 896 ||
                  screenHeight == 896 && screenWidth == 414 ||
                  screenHeight == 844 && screenWidth == 390)
              ? GoogleFonts.mukta(fontSize: 20.0)
              : GoogleFonts.mukta(fontSize: 18.0),
          borderRadius: BorderRadius.circular(5.0),
          onPressed: () async {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: ((context) => welcom())));
          },
        ),
        SizedBox(
          height: (screenHeight == 851 && screenWidth == 393)
              ? screenHeight * 0.08
              : screenHeight * 0.07,
        ),
        Text(
          "Don't have an Account",
          style: (screenHeight == 896 && screenWidth == 414 ||
                  screenHeight == 844 ||
                  screenWidth == 390 ||
                  screenHeight == 1180 && screenWidth == 820 ||
                  screenHeight == 1024 && screenWidth == 768
              // screenHeight == 1368 && screenWidth == 912
              )
              ? GoogleFonts.mukta(
                  fontSize: 22.9,
                  decoration: TextDecoration.none,
                  color: Color.fromRGBO(95, 93, 210, 1))
              : GoogleFonts.mukta(
                  fontSize: 15.5,
                  decoration: TextDecoration.none,
                  color: Color.fromRGBO(95, 93, 210, 1)),
        ),
        SizedBox(
          height: screenHeight * 0.001,
          // height: 50.0,
        ),
        Text(
          "Sign in here",
          style: (screenHeight == 896 && screenWidth == 414 ||
                  screenHeight == 844 && screenWidth == 390 ||
                  screenHeight == 1180 && screenWidth == 820 ||
                  screenHeight == 1024 && screenWidth == 768 ||
                  screenHeight == 1368 && screenWidth == 912)
              ? GoogleFonts.mukta(
                  decoration: TextDecoration.none,
                  color: Color.fromRGBO(92, 93, 210, 1),
                  fontSize: 30.0)
              : GoogleFonts.mukta(
                  decoration: TextDecoration.none,
                  color: Color.fromRGBO(92, 93, 210, 1),
                  fontSize: 18.0),
        )
      ]),
    );
  }
}
