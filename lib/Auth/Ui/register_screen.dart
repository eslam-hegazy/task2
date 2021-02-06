import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task2/Auth/Ui/pincode.dart';
import 'package:task2/Auth/Widgets/button_start.dart';
import 'package:task2/Auth/Widgets/register_logo.dart';
import 'package:task2/Auth/Widgets/textfield.dart';

class register_screen extends StatefulWidget {
  @override
  _register_screenState createState() => _register_screenState();
}

class _register_screenState extends State<register_screen> {
  TextEditingController name_controller;
  TextEditingController phone_controller;
  TextEditingController pass1_controller;
  TextEditingController pass2_controller;
  var pincountry;
  bool ishiden1 = false;
  bool ishiden2 = false;
  var _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 35,
              ),
              register_logo(),
              SizedBox(height: 20),
              CustomTextField(
                  "ادخل الإسم بالكامل",
                  TextInputType.name,
                  Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                  name_controller,
                  "من فضلك أدخل اسمك"),
              Container(
                margin: EdgeInsets.only(right: 15, left: 15, top: 5),
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
                    hintText: "ادخل رقم التلفون",
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
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'من فضلك أدخل رقم التلفون';
                    }
                    return null;
                  },
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
                  controller: pass1_controller,
                  obscureText: ishiden1,
                  decoration: InputDecoration(
                    hintText: "ادخل كلمة السرى",
                    suffixIcon: Icon(
                      Icons.lock_rounded,
                      color: Colors.white,
                    ),
                    prefixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          ishiden1 = !ishiden1;
                        });
                      },
                      icon: Icon(
                        ishiden1 ? Icons.visibility_off : Icons.visibility,
                        color: Colors.white,
                      ),
                    ),
                    enabledBorder: InputBorder.none,
                    border: InputBorder.none,
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'من فضلك ادخل كلمة السر';
                    }
                    return null;
                  },
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
                  controller: pass2_controller,
                  obscureText: ishiden2,
                  decoration: InputDecoration(
                    hintText: "تأكيد كلمةالسرى",
                    suffixIcon: Icon(
                      Icons.lock_rounded,
                      color: Colors.white,
                    ),
                    prefixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          ishiden2 = !ishiden2;
                        });
                      },
                      icon: Icon(
                        ishiden2 ? Icons.visibility_off : Icons.visibility,
                        color: Colors.white,
                      ),
                    ),
                    enabledBorder: InputBorder.none,
                    border: InputBorder.none,
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'من فضلك أدخل كلمة السر';
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(height: 15),
              InkWell(
                onTap: () {
                  if (_formkey.currentState.validate()) {
                    Navigator.push(context, MaterialPageRoute(builder: (_) {
                      return pincode();
                    }));
                  }
                },
                child: button_start("تسجيل"),
              ),
              SizedBox(height: 25),
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
      ),
    );
  }
}
