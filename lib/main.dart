import 'package:flutter/material.dart';

import 'Auth/Ui/splash_screen.dart';

void main() {
  runApp(myapp());
}

class myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "مارد",
      debugShowCheckedModeBanner: false,
      home: splash_screen(),
    );
  }
}
