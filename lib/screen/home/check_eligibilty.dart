import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
// import 'package:date_field/date_field.dart';
// import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:web_date_picker/web_date_picker.dart';

class check_eligibility extends StatefulWidget {
  check_eligibility({Key? key}) : super(key: key);

  @override
  State<check_eligibility> createState() => _check_eligibilityState();
}

class _check_eligibilityState extends State<check_eligibility> {
  final _formKey = GlobalKey<FormState>();
  DateTime? selectedDate;

  String _userEmail = '';
  String _userName = '';
  String _password = '';
  String _confirmPassword = '';
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: BackButton(color: Colors.white),
        title: Padding(
          padding: const EdgeInsets.only(left: 1.0),
          child: Text(
            "Finance",
          ),
        ),
        // centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
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
      body: Column(
        children: [
          Container(
            height: screenHeight / 10.0,
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
                    top: 1.0,
                    // bottom: 40.0,
                    child: Container(
                      // height: MediaQuery.of(context).size.height / 3.4,
                      height: MediaQuery.of(context).size.height / 10.4,
                      // height: 200,
                      width: screenWidth,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(38, 48, 129, 1),
                      ),
                    ),
                  ),
                ]),
          ),
          Form(
              key: _formKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  /// Eamil

                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Enter Pan Number ",
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'Please enter your  Pan number ';
                      }
                      // Check if the entered email has the right format
                      // if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                      //   return 'Please enter a valid email address';
                      // }
                      // Return null if the entered email is valid
                      return null;
                    },
                    onChanged: (value) => _userEmail = value,
                  ),

                  /// username
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Enter Name",
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'This field is required';
                      }
                      if (value.trim().length < 4) {
                        return 'Name must be at least 4 characters in length';
                      }
                      // Return null if the entered username is valid
                      return null;
                    },
                    onChanged: (value) => _userName = value,
                  ),

                  /// Password
                  TextFormField(
                    decoration: const InputDecoration(
                        hintText: "Enter DOB",
                        // labelText: 'Password',s
                        border: OutlineInputBorder()),
                    obscureText: true,
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'This field is required';
                      }
                      // if (value.trim().length < 8) {
                      //   return 'Password must be at least 8 characters in length';
                      // }
                      // Return null if the entered password is valid
                      return null;
                    },
                    onChanged: (value) => _password = value,
                  ),

                  /// Confirm Password
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Gender ',
                      border: OutlineInputBorder(),
                    ),
                    obscureText: true,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'This field is required';
                      }

                      // if (value != _password) {
                      //   return 'Confimation password does not match the entered password';
                      // }

                      return null;
                    },
                    onChanged: (value) => _confirmPassword = value,
                  ),
                  WebDatePicker(
                    onChange: (value) {},
                  ),

                  // const SizedBox(height: 50),
                  // DateTimeFormField(
                  //   decoration: const InputDecoration(
                  //     hintStyle: TextStyle(color: Colors.black45),
                  //     errorStyle: TextStyle(color: Colors.redAccent),
                  //     border: OutlineInputBorder(),
                  //     suffixIcon: Icon(Icons.event_note),
                  //     labelText: 'Only time',
                  //   ),
                  //   mode: DateTimeFieldPickerMode.time,
                  //   autovalidateMode: AutovalidateMode.always,
                  //   validator: (DateTime? e) {
                  //     return (e?.day ?? 0) == 1
                  //         ? 'Please not the first day'
                  //         : null;
                  //   },
                  //   onDateSelected: (DateTime value) {
                  //     print(value);
                  //   },
                  // ),

                  // const SizedBox(height: 20),
                  Container(
                      alignment: Alignment.centerRight,
                      child: OutlinedButton(
                          onPressed: _trySubmitForm,
                          child: const Text('Sign Up')))
                ],
              )),
        ],

        // ),
      ),
    );
  }

  // This function is triggered when the user press the "Sign Up" button
  void _trySubmitForm() {
    final bool? isValid = _formKey.currentState?.validate();
    if (isValid == true) {
      debugPrint('Everything looks good!');
      debugPrint(_userEmail);
      debugPrint(_userName);
      debugPrint(_password);
      debugPrint(_confirmPassword);

      /* 
      Continute proccessing the provided information with your own logic 
      such us sending HTTP requests, savaing to SQLite database, etc.
      */
    }
  }
}
