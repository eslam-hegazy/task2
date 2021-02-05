import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task2/Auth/Ui/pincode.dart';
import 'package:task2/Auth/Widgets/button_start.dart';
import 'package:task2/Auth/Widgets/register_logo.dart';

class register_screen extends StatefulWidget {
  @override
  _register_screenState createState() => _register_screenState();
}

class _register_screenState extends State<register_screen> {
  TextEditingController phone_controller;
  var pincountry;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 35,
            ),
            register_logo(),
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.5),
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
            SizedBox(height: 15),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return pincode();
                }));
              },
              child: button_start("تأكيد"),
            ),
            SizedBox(height: 150),
            Padding(
              padding: EdgeInsets.only(right: 15, left: 15),
              child: Divider(color: Color(0xFF0E172D), height: 2),
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) {
                      ///////////////صفحة الشروط هنا
                      return null;
                    }));
                  },
                  child: Text("سياسة وشروط الإستخدام",
                      style: TextStyle(
                          color: Color(0xFF0E172D),
                          fontWeight: FontWeight.bold,
                          fontSize: 12)),
                ),
                Text("استخدامك لهذا التطبيق يعنى موافقتك على ",
                    style: TextStyle(color: Colors.black, fontSize: 12)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
