import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task2/Auth/Ui/home_page.dart';
import 'package:task2/Auth/Widgets/button_start.dart';
import 'package:task2/Auth/Widgets/register_logo.dart';
import 'package:task2/Auth/Widgets/textfield.dart';

class information extends StatefulWidget {
  @override
  _informationState createState() => _informationState();
}

class _informationState extends State<information> {
  TextEditingController name_controller;
  TextEditingController phone_controller;
  TextEditingController data_controller;
  var pincountry;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "معلومات شخصية",
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
            CustomTextField("اسمك بالكامل", TextInputType.text,
                Icon(Icons.person, color: Colors.white), name_controller),
            Container(
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextFormField(
                cursorColor: Colors.white,
                keyboardType: TextInputType.phone,
                controller: phone_controller,
                textAlign: TextAlign.right,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "أدخل رقم هاتفك",
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
            CustomTextField(
                "1-2-200",
                TextInputType.number,
                Icon(
                  Icons.date_range,
                  color: Colors.white,
                ),
                data_controller),
            SizedBox(height: 10),
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
