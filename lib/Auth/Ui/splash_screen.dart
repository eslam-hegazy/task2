import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:page_transition/page_transition.dart';
import 'package:task2/Auth/Ui/login_screen.dart';

class splash_screen extends StatefulWidget {
  @override
  _splash_screenState createState() => _splash_screenState();
}

class _splash_screenState extends State<splash_screen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        Duration(seconds: 5),
        () => Navigator.push(
            context,
            PageTransition(
                type: PageTransitionType.topToBottom, child: login_screen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            "images/logo.png",
            height: MediaQuery.of(context).size.height * 0.40,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "... شبيك لبيك مارد بين أيديك ",
            style: TextStyle(
                color: Color(0xFF46C5DD), fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 80,
          ),
          SpinKitDoubleBounce(
            color: Color(0xFF46C5DD),
          ),
        ],
      ),
    );
  }
}
