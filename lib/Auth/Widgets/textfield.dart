import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String name;
  final TextInputType type;
  final Icon icons;
  final TextEditingController controller;
  final String alerttext;
  CustomTextField(
      this.name, this.type, this.icons, this.controller, this.alerttext);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextFormField(
        cursorColor: Colors.white,
        controller: controller,
        keyboardType: type,
        textAlign: TextAlign.right,
        enableInteractiveSelection: false,
        decoration: InputDecoration(
            hintText: name,
            suffixIcon: icons,
            enabledBorder: InputBorder.none,
            border: InputBorder.none),
        validator: (value) {
          if (value.isEmpty) {
            return alerttext;
          }
          return null;
        },
      ),
    );
  }
}
