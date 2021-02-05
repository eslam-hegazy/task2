import 'package:flutter/cupertino.dart';

class register_logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.30,
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage("images/logo.png"),
      )),
    );
  }
}
