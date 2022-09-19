import 'dart:ui';

import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../account_created.dart';
import '../../create_your_account.dart';

import 'grid_view.dart';
import 'home_page_2.dart';

class home_page_1 extends StatefulWidget {
  home_page_1({Key? key}) : super(key: key);

  @override
  State<home_page_1> createState() => _home_page_1State();
}

class _home_page_1State extends State<home_page_1> {
  int _selectedIndex = 0;
  int pageIndex = 0;
  int _currentIndex = 0;

  void _onTapHandler(int index) {
    // assuming index 1 is your search tab
    if (index == 0) {
      account_created();
    } else {
      setState(() {
        _selectedIndex = index;
      });
    }
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      print('_selectedIndex${_selectedIndex}');
      if (index == 2) {
        account_created();
      } else {
        setState(() {
          _selectedIndex = index;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    int pageIndex = 0;

    List images = [
      'images/message-2.png',
      'images/messege.png',
      'images/shoping.png',
    ];
    // ThemeStyle _currentStyle = ThemeStyle.NotificationBadge;

    List<int> _badgeCounts = List<int>.generate(5, (index) => index);

    List<bool> _badgeShows = List<bool>.generate(5, (index) => true);

    return Scaffold(
      // extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(
          "Finance",
        ),
        // backgroundColor: Colors.transparent,
        elevation: 0,
        backgroundColor: Color.fromRGBO(38, 48, 129, 1),
        shape: Border(
          bottom: BorderSide(color: Color.fromRGBO(38, 48, 129, 1)),
        ),

        actions: <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 14.0),
              child: GestureDetector(
                onTap: () {},
                child: SvgPicture.asset(
                  "icons/bell.svg",
                  height: 24.0,
                  width: 24.0,
                ),
              )),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Manish  Singh"),
              accountEmail: Text("manishsinghsemra2@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.orange,
                child: Text(
                  "A",
                  style: TextStyle(fontSize: 40.0),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.contacts),
              title: Text("Contact Us"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: _buildFloatingBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: screenHeight / 3.0,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(241, 240, 247, 1),
                  border: Border.all(
                      width: 0, color: Color.fromRGBO(241, 240, 247, 1))),
              width: screenWidth,
              child: Stack(
                  fit: StackFit.expand,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  children: [
                    Positioned(
                      // top: 1.0,
                      bottom: 40.0,
                      child: Container(
                        // height: MediaQuery.of(context).size.height / 3.4,
                        height: MediaQuery.of(context).size.height / 3.4,
                        // height: 200,
                        width: screenWidth,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(38, 48, 129, 1),
                            borderRadius: BorderRadius.only(
                              // topLeft: Radius.circular(5),
                              // topRight: Radius.circular(5),
                              bottomLeft: Radius.circular(10.0),
                              bottomRight: Radius.circular(10.0),
                              // Radius.circular(25.0)
                            )),
                      ),
                    ),
                    Positioned(
                      child: Container(
                        width: screenWidth,
                        // height: 180,
                        child: Swiper(
                          itemBuilder: (BuildContext context, int index) {
                            return _buildSwiperList(images[index], index);
                          },
                          itemCount: 3,
                          pagination: new SwiperPagination(
                              // margin: EdgeInsets.only(top: 100),
                              alignment: Alignment.bottomCenter,
                              // alignment: Alignment.center,
                              margin: EdgeInsets.only(top: 95.0),
                              builder: new DotSwiperPaginationBuilder(

                                  // space: 24.0,

                                  color: Colors.grey,
                                  activeColor: Color(0xff38547C))),
                          autoplay: true,
                        ),
                      ),
                    ),
                    // ),
                  ]),
            ),
            Container(
                // height: screenHeight / 4.5,
                width: screenWidth,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(241, 240, 247, 1),
                    border: Border.all(
                        width: 0, color: Color.fromRGBO(241, 240, 247, 1))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 18.0, top: 8.0, bottom: 8.0),
                      child: Text(
                        "Product And Service",
                        style: GoogleFonts.roboto(
                            color: Colors.black,
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Row(
                      // mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            height: MediaQuery.of(context).size.height / 7.5,
                            width: MediaQuery.of(context).size.width / 3.3,
                            child: Card(
                                child: Padding(
                              padding: EdgeInsets.only(top: 3.5),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ClipOval(
                                    // child: Expanded(
                                    child: Material(
                                        color: Color.fromRGBO(49, 162, 246, 1),
                                        child: SizedBox.fromSize(
                                            size: Size.fromRadius(20.0),
                                            // size: Size.fromRadius(40.0),
                                            child: Padding(
                                              padding: EdgeInsets.all(5.0),
                                              child: GestureDetector(
                                                onTap: () async {
                                                  Navigator.of(context)
                                                      .pushReplacement(
                                                          MaterialPageRoute(
                                                              builder: ((context) =>
                                                                  home_page2())));
                                                },
                                                child: SvgPicture.asset(
                                                  'icons/loan.svg',
                                                  width: 10.0,
                                                  height: 10.0,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ))
                                        // ),
                                        ),
                                    // ),
                                  ),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Text(
                                    "Loan",
                                    style: GoogleFonts.roboto(
                                        // fontSize: 10.0,
                                        fontSize: 10.0,
                                        decoration: TextDecoration.none,
                                        color: Colors.black),
                                  ),
                                ],
                              ),
                            ))),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 45.0,
                        ),
                        Container(
                            height: MediaQuery.of(context).size.height / 7.5,
                            width: MediaQuery.of(context).size.width / 3.3,
                            child: Card(
                                child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ClipOval(
                                  child: Material(
                                      color: Color.fromRGBO(241, 144, 134, 1),
                                      child: SizedBox.fromSize(
                                          size: Size.fromRadius(20.0),
                                          child: Padding(
                                            padding: EdgeInsets.all(5.0),
                                            child: SvgPicture.asset(
                                              'icons/id-card.svg',
                                              width: 20.0,
                                              height: 20.0,
                                              fit: BoxFit.cover,
                                            ),
                                          ))
                                      // ),
                                      ),
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Text(
                                  "Card",
                                  style: GoogleFonts.roboto(
                                      fontSize: 10.0,
                                      decoration: TextDecoration.none,
                                      color: Colors.black),
                                )
                              ],
                            ))),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 45.0,
                        ),
                        Container(
                            height: MediaQuery.of(context).size.height / 7.5,
                            width: MediaQuery.of(context).size.width / 3.3,
                            child: Card(
                                child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ClipOval(
                                  child: Material(
                                      color: Color.fromRGBO(85, 203, 189, 1),
                                      child: SizedBox.fromSize(
                                          size: Size.fromRadius(20.0),
                                          child: Padding(
                                            padding: EdgeInsets.all(5.0),
                                            child: SvgPicture.asset(
                                              'icons/phone-bills.svg',
                                              width: 20.0,
                                              height: 20.0,
                                              fit: BoxFit.cover,
                                            ),
                                          ))
                                      // ),
                                      ),
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Text(
                                  "Recharge & Bills",
                                  style: GoogleFonts.roboto(
                                      fontSize: 10.0,
                                      decoration: TextDecoration.none,
                                      color: Colors.black),
                                )
                              ],
                            ))),
                      ],
                    ),
                    SizedBox(
                      // height: MediaQuery.of(context).size.height / .0
                      height: 1.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            height: MediaQuery.of(context).size.height / 7.5,
                            width: MediaQuery.of(context).size.width / 3.3,
                            child: Card(
                                child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ClipOval(
                                  child: Material(
                                      color: Color.fromRGBO(249, 173, 34, 1),
                                      child: SizedBox.fromSize(
                                          size: Size.fromRadius(20.0),
                                          child: Padding(
                                            padding: EdgeInsets.all(5.0),
                                            child: SvgPicture.asset(
                                              'icons/mortgage-insurance.svg',
                                              width: 20.0,
                                              height: 20.0,
                                              fit: BoxFit.cover,
                                            ),
                                          ))
                                      // ),
                                      ),
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Text(
                                  " Insurance ",
                                  style: GoogleFonts.roboto(
                                      fontSize: 10.0,
                                      decoration: TextDecoration.none,
                                      color: Colors.black),
                                )
                              ],
                            ))),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 45.0,
                        ),
                        Container(
                            height: MediaQuery.of(context).size.height / 7.5,
                            width: MediaQuery.of(context).size.width / 3.3,
                            child: Card(
                                child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ClipOval(
                                  child: Material(
                                      color: Color.fromRGBO(250, 94, 55, 1),
                                      child: SizedBox.fromSize(
                                          size: Size.fromRadius(20.0),
                                          child: Padding(
                                            padding: EdgeInsets.all(5.0),
                                            child: SvgPicture.asset(
                                              'icons/car-svgrepo-com.svg',
                                              width: 20.0,
                                              height: 20.0,
                                              fit: BoxFit.cover,
                                            ),
                                          ))
                                      // ),
                                      ),
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Text(
                                  " Investments",
                                  style: GoogleFonts.roboto(
                                      fontSize: 10.0,
                                      decoration: TextDecoration.none,
                                      color: Colors.black),
                                )
                              ],
                            ))),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 45.0,
                        ),
                        Container(
                            height: MediaQuery.of(context).size.height / 7.5,
                            width: MediaQuery.of(context).size.width / 3.3,
                            child: Card(
                                child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ClipOval(
                                  child: Material(
                                      color: Color.fromRGBO(153, 104, 193, 1),
                                      child: SizedBox.fromSize(
                                          size: Size.fromRadius(20.0),
                                          child: Padding(
                                            padding: EdgeInsets.all(5.0),
                                            child: SvgPicture.asset(
                                              'icons/shopping-bag.svg',
                                              width: 20.0,
                                              height: 20.0,
                                              fit: BoxFit.cover,
                                            ),
                                          ))
                                      // ),
                                      ),
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Text(
                                  " E-Com Offers",
                                  style: GoogleFonts.roboto(
                                      fontSize: 10.0,
                                      decoration: TextDecoration.none,
                                      color: Colors.black),
                                )
                              ],
                            ))),
                      ],
                    )
                  ],
                )),
            Container(
                // height: screenHeight / 4.5,
                width: screenWidth,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(241, 240, 247, 1),
                    border: Border.all(
                        width: 0, color: Color.fromRGBO(241, 240, 247, 1))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 18.0, top: 8.0, bottom: 8.0),
                      child: Text(
                        "Trending Service",
                        style: GoogleFonts.roboto(
                            color: Colors.black,
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            height: MediaQuery.of(context).size.height / 7.5,
                            width: MediaQuery.of(context).size.width / 3.3,
                            child: Card(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ClipOval(
                                    child: Material(
                                        color: Color.fromRGBO(50, 155, 244, 1),
                                        child: SizedBox.fromSize(
                                            size: Size.fromRadius(20.0),
                                            child: Padding(
                                              padding: EdgeInsets.all(5.0),
                                              // padding: EdgeInsets.all(0.5),
                                              child: SvgPicture.asset(
                                                'icons/personal_loan.svg',
                                                fit: BoxFit.cover,
                                              ),
                                            ))
                                        // ),
                                        ),
                                  ),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Text(
                                    " Personal Loan",
                                    style: GoogleFonts.roboto(
                                        fontSize: 10.0,
                                        decoration: TextDecoration.none,
                                        color: Colors.black),
                                  )
                                ],
                              ),
                            )),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 45.0,
                        ),
                        Container(
                            height: MediaQuery.of(context).size.height / 7.5,
                            width: MediaQuery.of(context).size.width / 3.3,
                            child: Card(
                                child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ClipOval(
                                  child: Material(
                                      color: Color.fromRGBO(237, 134, 132, 1),
                                      child: SizedBox.fromSize(
                                          size: Size.fromRadius(20.0),
                                          child: Padding(
                                            padding: EdgeInsets.all(5.0),
                                            child: SvgPicture.asset(
                                              'icons/business_loan.svg',
                                              width: 20.0,
                                              height: 20.0,
                                              fit: BoxFit.cover,
                                            ),
                                          ))
                                      // ),
                                      ),
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Text(
                                  " Business Loan",
                                  style: GoogleFonts.roboto(
                                      fontSize: 10.0,
                                      decoration: TextDecoration.none,
                                      color: Colors.black),
                                )
                              ],
                            ))),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 45.0,
                        ),
                        Container(
                            height: MediaQuery.of(context).size.height / 7.5,
                            width: MediaQuery.of(context).size.width / 3.3,
                            child: Card(
                                child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ClipOval(
                                  child: Material(
                                      color: Color.fromRGBO(64, 191, 175, 1),
                                      child: SizedBox.fromSize(
                                          size: Size.fromRadius(20.0),
                                          child: Padding(
                                            padding: EdgeInsets.all(5.0),
                                            child: SvgPicture.asset(
                                              'icons/home-loan.svg',
                                              width: 20.0,
                                              height: 20.0,
                                              fit: BoxFit.cover,
                                            ),
                                          ))
                                      // ),
                                      ),
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Text(
                                  "Home Loan ",
                                  style: GoogleFonts.roboto(
                                      fontSize: 10.0,
                                      decoration: TextDecoration.none,
                                      color: Colors.black),
                                )
                              ],
                            ))),
                      ],
                    ),
                    SizedBox(
                      // height: MediaQuery.of(context).size.height / .0
                      height: 1.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            height: MediaQuery.of(context).size.height / 7.5,
                            width: MediaQuery.of(context).size.width / 3.3,
                            child: Card(
                                child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ClipOval(
                                  child: Material(
                                      color: Color.fromRGBO(255, 175, 32, 1),
                                      child: SizedBox.fromSize(
                                          size: Size.fromRadius(20.0),
                                          child: Padding(
                                            padding: EdgeInsets.all(5.0),
                                            child: SvgPicture.asset(
                                              'icons/contract-loan.svg',
                                              width: 20.0,
                                              height: 20.0,
                                              fit: BoxFit.cover,
                                            ),
                                          ))
                                      // ),
                                      ),
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Text(
                                  "Loan Against Property",
                                  style: GoogleFonts.roboto(
                                      fontSize: 8.0,
                                      decoration: TextDecoration.none,
                                      color: Colors.black),
                                )
                              ],
                            ))),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 45.0,
                        ),
                        Container(
                            height: MediaQuery.of(context).size.height / 7.5,
                            width: MediaQuery.of(context).size.width / 3.3,
                            child: Card(
                                child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ClipOval(
                                  child: Material(
                                      color: Color.fromRGBO(252, 124, 82, 1),
                                      child: SizedBox.fromSize(
                                          size: Size.fromRadius(20.0),
                                          child: Padding(
                                            padding: EdgeInsets.all(5.0),
                                            child: SvgPicture.asset(
                                              'icons/vehicle-loan.svg',
                                              width: 20.0,
                                              height: 20.0,
                                              fit: BoxFit.cover,
                                            ),
                                          ))
                                      // ),
                                      ),
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Text(
                                  "  Vehical Loan ",
                                  style: GoogleFonts.roboto(
                                      fontSize: 10.0,
                                      decoration: TextDecoration.none,
                                      color: Colors.black),
                                )
                              ],
                            ))),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 45.0,
                        ),
                        Container(
                            height: MediaQuery.of(context).size.height / 7.5,
                            width: MediaQuery.of(context).size.width / 3.3,
                            child: Card(
                                child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ClipOval(
                                  child: Material(
                                      color: Color.fromRGBO(180, 118, 229, 1),
                                      child: SizedBox.fromSize(
                                          size: Size.fromRadius(20.0),
                                          child: Padding(
                                            padding: EdgeInsets.all(5.0),
                                            child: SvgPicture.asset(
                                              'icons/education-loan.svg',
                                              width: 20.0,
                                              height: 20.0,
                                              fit: BoxFit.cover,
                                            ),
                                          ))
                                      // ),
                                      ),
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Text(
                                  " Educatio Loan",
                                  style: GoogleFonts.roboto(
                                      fontSize: 10.0,
                                      decoration: TextDecoration.none,
                                      color: Colors.black),
                                )
                              ],
                            ))),
                      ],
                    )
                  ],
                )),
            Container(
                // height: screenHeight / 4.5,
                width: screenWidth,
                // decoration: BoxDecoration(color: Colors.green),
                decoration: BoxDecoration(
                    color: Color.fromRGBO(241, 240, 247, 1),
                    border: Border.all(
                        width: 0, color: Color.fromRGBO(241, 240, 247, 1))),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20.0, top: 8.0, bottom: 8.0),
                        child: Text(
                          "News And Story",
                          style: GoogleFonts.roboto(
                              color: Colors.black,
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 12.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ClipOval(
                              child: Material(
                                  color: Color.fromRGBO(55, 0, 179, 1),
                                  child: SizedBox.fromSize(
                                      size: Size.fromRadius(27.0),
                                      child: Padding(
                                        padding: EdgeInsets.all(5.0),
                                        // child: SvgPicture.asset(
                                        //   'icons/education-loan.svg',
                                        //   width: 20.0,
                                        //   height: 20.0,
                                        //   fit: BoxFit.cover,
                                        // ),
                                      ))
                                  // ),
                                  ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 20.0,
                            ),
                            ClipOval(
                              child: Material(
                                  color: Color.fromRGBO(55, 0, 179, 1),
                                  child: SizedBox.fromSize(
                                      size: Size.fromRadius(27.0),
                                      child: Padding(
                                        padding: EdgeInsets.all(5.0),
                                        // child: SvgPicture.asset(
                                        //   'icons/education-loan.svg',
                                        //   width: 20.0,
                                        //   height: 20.0,
                                        //   fit: BoxFit.cover,
                                        // ),
                                      ))
                                  // ),
                                  ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 22.0,
                            ),
                            ClipOval(
                              child: Material(
                                  color: Color.fromRGBO(55, 0, 179, 1),
                                  child: SizedBox.fromSize(
                                      size: Size.fromRadius(27.0),
                                      child: Padding(
                                        padding: EdgeInsets.all(5.0),
                                        // child: SvgPicture.asset(
                                        //   'icons/education-loan.svg',
                                        //   width: 20.0,
                                        //   height: 20.0,
                                        //   fit: BoxFit.cover,
                                        // ),
                                      ))
                                  // ),
                                  ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 20.0,
                            ),
                            ClipOval(
                              child: Material(
                                  color: Color.fromRGBO(55, 0, 179, 1),
                                  child: SizedBox.fromSize(
                                      size: Size.fromRadius(27.0),
                                      child: Padding(
                                        padding: EdgeInsets.all(5.0),
                                        // child: SvgPicture.asset(
                                        //   'icons/education-loan.svg',
                                        //   width: 20.0,
                                        //   height: 20.0,
                                        //   fit: BoxFit.cover,
                                        // ),
                                      ))
                                  // ),
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ]))
          ],
        ),
      ),
    );
  }

  Widget _buildFloatingBar() {
    return Container(
      decoration: BoxDecoration(
          color: Color.fromRGBO(241, 240, 247, 1),
          border:
              Border.all(width: 0, color: Color.fromRGBO(241, 240, 247, 1))),
      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
      child: CustomNavigationBar(
        iconSize: 30.0,
        selectedColor: Color(0xff0c18fb),
        strokeColor: Color(0x300c18fb),
        unSelectedColor: Colors.grey[600],
        backgroundColor: Colors.white,
        borderRadius: Radius.circular(20.0),
        items: [
          CustomNavigationBarItem(
            icon: Icon(
                // AntDesign.getIconData('home'),
                Icons.home),
          ),
          CustomNavigationBarItem(
            icon: Icon(
                // AntDesign.getIconData('shoppingcart'),
                Icons.wallet_sharp),
          ),
          CustomNavigationBarItem(
            icon: Icon(
                // AntDesign.getIconData("user"),
                Icons.settings),
          ),
        ],
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        isFloating: true,
      ),
    );
  }
}

Widget _buildSwiperList(items, int index) {
  return Container(
    padding: EdgeInsets.only(top: 45.0, bottom: 20.0, left: 10.0, right: 10.0),
    child: Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(50.0)),
        child: Image.asset(
          items,

          // fit: BoxFit.fitWidth,
        ),
      ),
    ),
  );
}
