import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task2/Auth/Widgets/button_start.dart';
import 'package:task2/Auth/Widgets/register_logo.dart';
import 'package:task2/Auth/Widgets/textfield.dart';

import '../home_page.dart';

class confirem_pass extends StatefulWidget {
  @override
  _confirem_passState createState() => _confirem_passState();
}

class _confirem_passState extends State<confirem_pass> {
  TextEditingController pass1_controller;
  TextEditingController pass2_controller;
  bool ishiden = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "تعيين كلمة السر",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        elevation: 0,
        titleSpacing: 3,
        backgroundColor: Color(0xFF0E172D),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 15),
            Container(
              height: MediaQuery.of(context).size.height * 0.25,
              child: register_logo(),
            ),
            Container(
              margin: EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 5),
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextFormField(
                textAlign: TextAlign.right,
                controller: pass1_controller,
                obscureText: ishiden,
                decoration: InputDecoration(
                    hintText: "أدخل الرقم السرى الجديد",
                    suffixIcon: Icon(
                      Icons.lock_rounded,
                      color: Colors.white,
                    ),
                    prefixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          ishiden = !ishiden;
                        });
                      },
                      icon: Icon(
                        ishiden ? Icons.visibility_off : Icons.visibility,
                        color: Colors.white,
                      ),
                    ),
                    enabledBorder: InputBorder.none,
                    border: InputBorder.none),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 5),
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextFormField(
                textAlign: TextAlign.right,
                controller: pass2_controller,
                obscureText: ishiden,
                decoration: InputDecoration(
                    hintText: "تأكيد كلمة السر",
                    suffixIcon: Icon(
                      Icons.lock_rounded,
                      color: Colors.white,
                    ),
                    prefixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          ishiden = !ishiden;
                        });
                      },
                      icon: Icon(
                        ishiden ? Icons.visibility_off : Icons.visibility,
                        color: Colors.white,
                      ),
                    ),
                    enabledBorder: InputBorder.none,
                    border: InputBorder.none),
              ),
            ),
            SizedBox(height: 30),
            InkWell(
              child: button_start("حفظ"),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return home_page();
                }));
              },
            ),
          ],
        ),
      ),
    );
  }
}
