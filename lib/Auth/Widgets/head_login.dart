import 'package:flutter/cupertino.dart';

class head_login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.40,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Color(0xFF0E172D),
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(1000)),
      ),
      child: Image.asset(
        "images/logo.png",
      ),
    );
  }
}
