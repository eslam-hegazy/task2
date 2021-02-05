import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class button_start extends StatelessWidget {
  final String text;
  button_start(this.text);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.70,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Color(0xFF0E172D),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        text,
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),
        textAlign: TextAlign.center,
      ),
    );
  }
}
