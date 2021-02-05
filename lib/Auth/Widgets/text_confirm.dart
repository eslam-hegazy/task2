import 'package:flutter/cupertino.dart';

class text_confirm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15),
      child: Text(
        "يرجى إدخال رمز التحقق المرسل اليك",
        style: TextStyle(
            color: Color(0xFF0E172D),
            fontSize: 18,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
