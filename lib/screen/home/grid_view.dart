import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class gridview extends StatefulWidget {
  gridview({Key? key}) : super(key: key);

  @override
  State<gridview> createState() => _gridviewState();
}

class _gridviewState extends State<gridview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, mainAxisSpacing: 12, crossAxisSpacing: 12),
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 10.5,
              width: MediaQuery.of(context).size.width / 3.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(23),
                color: Colors.red,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.home, size: 50, color: Colors.white),
                  Text("Home",
                      style: TextStyle(fontSize: 30.0, color: Colors.white))
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 10.5,
              width: MediaQuery.of(context).size.width / 3.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(23),
                  color: Colors.yellowAccent),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.search, size: 50, color: Colors.white),
                  Text("search",
                      style: TextStyle(fontSize: 30.0, color: Colors.white))
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 10.5,
              width: MediaQuery.of(context).size.width / 3.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(23),
                color: Colors.greenAccent,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.settings, size: 50, color: Colors.white),
                  Text("settings",
                      style: TextStyle(fontSize: 30.0, color: Colors.white))
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 10.5,
              width: MediaQuery.of(context).size.width / 3.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(23),
                color: Colors.blue,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.call, size: 50, color: Colors.white),
                  Text("call",
                      style: TextStyle(fontSize: 30.0, color: Colors.white)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
