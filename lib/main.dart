import 'package:flutter/material.dart';
import 'package:one_finance/account_created.dart';
import 'package:flutter/services.dart';
import 'package:one_finance/password_reset_success.dart';
import 'package:one_finance/reset_pass.dart';

import 'package:one_finance/screen/home/check_eligibilty.dart';
import 'package:one_finance/screen/home/home_page_1.dart';
import 'package:one_finance/screen/home/home_page_2.dart';
import 'package:one_finance/screen/home/home_page_3.dart';

import 'package:one_finance/signup.dart';

import 'package:one_finance/verify_number.dart';
import 'package:one_finance/welcome.dart';
import 'create_your_account.dart';
import 'forget_password.dart';
import 'image_finance.dart';

import 'mobile_varification.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(),
        // home: home_page_1());
        // home: home_page_1());
        // home: check_eligibility());
        home: welcom());
    // home: forget_password());
    // home: reset_pass());
    // home: password_reset_success());
    // home: CarouselExample());
    // home: get_Started_image());
    // home: account_created());
    // home: mobilevarification());

    // home: MyHomePage());
  }
}
