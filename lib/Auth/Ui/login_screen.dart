import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task2/Auth/Ui/register_screen.dart';
import 'package:task2/Auth/Widgets/button_start.dart';
import 'package:task2/Auth/Widgets/head_login.dart';
import 'package:country_code_picker/country_code_picker.dart';

import 'forget_pass/send_phone.dart';
import 'home_page.dart';

class login_screen extends StatefulWidget {
  @override
  _login_screenState createState() => _login_screenState();
}

class _login_screenState extends State<login_screen> {
  bool ishiden = false;
  TextEditingController phone_controller;
  TextEditingController Password_controller;
  var pincountry;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            head_login(),
            SizedBox(height: 50),
            Form(
                child: Column(
              children: [
                Container(
                  margin: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: TextFormField(
                    keyboardType: TextInputType.phone,
                    controller: phone_controller,
                    textAlign: TextAlign.right,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "أدخل رقم التلفون",
                      suffixIcon: Icon(Icons.phone, color: Colors.white),
                      prefixIcon: CountryCodePicker(
                        favorite: ['+02', 'EG'],
                        onChanged: (value) {
                          setState(() {
                            pincountry = value;
                          });
                        },
                      ),
                    ),
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 5),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: TextFormField(
                    textAlign: TextAlign.right,
                    controller: Password_controller,
                    obscureText: ishiden,
                    decoration: InputDecoration(
                      hintText: "أدخل الرقم السرى",
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
                      border: InputBorder.none,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) {
                      return send_phone();
                    }));
                  },
                  child: Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.only(left: 33),
                    child: Text(
                      "!هل نسيت كلمة السر؟",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                InkWell(
                    child: button_start("تسجيل"),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_) {
                        return home_page();
                      }));
                    }),
              ],
            )),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: EdgeInsets.only(right: 15, left: 15),
              child: Divider(color: Color(0xFF0E172D)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) {
                      return register_screen();
                    }));
                  },
                  child: Text("تسجيل",
                      style: TextStyle(
                          color: Color(0xFF0E172D),
                          fontWeight: FontWeight.w900)),
                ),
                Text("هل ليس لديك حساب؟",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
