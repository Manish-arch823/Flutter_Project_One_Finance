import 'package:card_swiper/card_swiper.dart';
import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home_page_3.dart';

class home_page2 extends StatefulWidget {
  home_page2({Key? key}) : super(key: key);

  @override
  State<home_page2> createState() => _nameState();
}

class _nameState extends State<home_page2> {
  int _selectedIndex = 0;
  int pageIndex = 0;
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    int pageIndex = 0;
    int _selectedIndex = 0;

    int _currentIndex = 0;

    List images = [
      'images/message-2.png',
      'images/messege.png',
      'images/shoping.png',
      'images/message-2.png',
    ];

    return Scaffold(
      bottomNavigationBar: _buildFloatingBar(),
      // extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(
          "Finance",
        ),
        // backgroundColor: Colors.transparent,
        elevation: 0,
        shape: Border(
          bottom: BorderSide(color: Color.fromRGBO(38, 48, 129, 1)),
        ),
        backgroundColor: Color.fromRGBO(38, 48, 129, 1),
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 15.0),
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
              accountName: Text("Abhishek Mishra"),
              accountEmail: Text("abhishekm977@gmail.com"),
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
                        height: MediaQuery.of(context).size.height / 3.4,
                        width: screenWidth,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(38, 48, 129, 1),
                            borderRadius: BorderRadius.only(
                              // topLeft: Radius.circular(5),
                              // topRight: Radius.circular(5),
                              bottomLeft: Radius.circular(10.0),
                              bottomRight: Radius.circular(10.0),
                              // Radius.circular(25.0)
                            )
                            // BorderRadius.all(Radius.circular(25.0))

                            ),
                      ),
                    ),
                    Positioned(
                      // top: 40.0,
                      child: Container(
                        width: screenWidth,
                        height: 200,
                        // height: 20.0,
                        child: Swiper(
                          itemBuilder: (BuildContext context, int index) {
                            return _buildSwiperList(images[index], index);
                          },
                          itemCount: 4,
                          pagination: new SwiperPagination(
                              alignment: Alignment.bottomCenter,
                              margin: EdgeInsets.only(top: 95.0),
                              builder: new DotSwiperPaginationBuilder(
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
                // height: screenHeight / 3.0,
                width: screenWidth,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(241, 240, 247, 1),
                    border: Border.all(
                        width: 0, color: Color.fromRGBO(241, 240, 247, 1))),
                padding: EdgeInsets.symmetric(vertical: 35.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20.0),
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
                                                                home_page_3())));
                                                // home_page_3();
                                              },
                                              child: SvgPicture.asset(
                                                'icons/loan.svg',
                                                // width: 20.0,
                                                // height: 20.0,
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
                                            child: GestureDetector(
                                              onTap: () async {
                                                Navigator.of(context)
                                                    .pushReplacement(
                                                        MaterialPageRoute(
                                                            builder: ((context) =>
                                                                home_page_3())));
                                                // home_page_3();
                                              },
                                              child: SvgPicture.asset(
                                                'icons/id-card.svg',
                                                width: 20.0,
                                                height: 20.0,
                                                fit: BoxFit.cover,
                                              ),
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
                                            child: GestureDetector(
                                              onTap: () async {
                                                Navigator.of(context)
                                                    .pushReplacement(
                                                        MaterialPageRoute(
                                                            builder: ((context) =>
                                                                home_page_3())));
                                                // home_page_3();
                                              },
                                              child: SvgPicture.asset(
                                                'icons/phone-bills.svg',
                                                width: 20.0,
                                                height: 20.0,
                                                fit: BoxFit.cover,
                                              ),
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
                                            child: GestureDetector(
                                              onTap: () async {
                                                Navigator.of(context)
                                                    .pushReplacement(
                                                        MaterialPageRoute(
                                                            builder: ((context) =>
                                                                home_page_3())));
                                                // home_page_3();
                                              },
                                              child: SvgPicture.asset(
                                                'icons/mortgage-insurance.svg',
                                                width: 20.0,
                                                height: 20.0,
                                                fit: BoxFit.cover,
                                              ),
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
                                            child: GestureDetector(
                                              onTap: () async {
                                                Navigator.of(context)
                                                    .pushReplacement(
                                                        MaterialPageRoute(
                                                            builder: ((context) =>
                                                                home_page_3())));
                                                // home_page_3();
                                              },
                                              child: SvgPicture.asset(
                                                'icons/car-svgrepo-com.svg',
                                                width: 20.0,
                                                height: 20.0,
                                                fit: BoxFit.cover,
                                              ),
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
                                            child: GestureDetector(
                                              onTap: () async {
                                                Navigator.of(context)
                                                    .pushReplacement(
                                                        MaterialPageRoute(
                                                            builder: ((context) =>
                                                                home_page_3())));
                                                // home_page_3();
                                              },
                                              child: SvgPicture.asset(
                                                'icons/shopping-bag.svg',
                                                width: 20.0,
                                                height: 20.0,
                                                fit: BoxFit.cover,
                                              ),
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
              // height: screenHeight / 3.0,
              width: screenWidth,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(241, 240, 247, 1),
                  border: Border.all(
                      width: 0, color: Color.fromRGBO(241, 240, 247, 1))),
              child: Column(
                  // fit: StackFit.expand,
                  // clipBehavior: Clip.antiAliasWithSaveLayer,
                  children: [
                    Positioned(
                      // top: 40.0,
                      // bottom: 2,
                      child: Container(
                        width: screenWidth,
                        height: 200,
                        child: Swiper(
                          itemBuilder: (BuildContext context, int index) {
                            return _buildSwiperList__2(images[index], index);
                          },
                          itemCount: 4,
                          pagination: new SwiperPagination(
                              margin: EdgeInsets.only(top: 95.0),
                              alignment: Alignment.bottomCenter,
                              builder: new DotSwiperPaginationBuilder(
                                  color: Colors.grey,
                                  activeColor: Color(0xff38547C))),
                          autoplay: true,
                        ),
                      ),
                    ),
                  ]),
            )
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

Widget _buildSwiperList__2(items, int index) {
  return Container(
    padding: EdgeInsets.only(top: 10.0, bottom: 20.0, left: 10.0, right: 10.0),
    child: Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(50.0)),
        child: Image.asset(
          items,
        ),
      ),
    ),
  );
}
