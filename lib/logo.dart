import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class logo extends StatelessWidget {
  const logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 90.0,
        width: 90.0,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Image.asset('images/logo1.png'),
        ),
      ),
    );
  }
}
