import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:task2/Auth/Ui/home_page.dart';
import 'package:task2/Auth/Widgets/button_start.dart';
import 'package:task2/Auth/Widgets/register_logo.dart';

class pincode extends StatefulWidget {
  @override
  _pincodeState createState() => _pincodeState();
}

class _pincodeState extends State<pincode> {
  final String requiredNumber = "4589";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "رمز التحقق",
          style:
              TextStyle(color: Color(0xFF0E172D), fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        shadowColor: Colors.black,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: Color(0xFF0E172D),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            child: register_logo(),
          ),
          SizedBox(height: 20.0),
          Text(
            'يرجى إدخال رمز التحقق المرسل اليك',
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 6.0),
          Padding(
            padding: EdgeInsets.only(right: 60, left: 60, top: 10, bottom: 10),
            child: PinCodeTextField(
              appContext: context,
              length: 4,
              onChanged: (value) {
                print(value);
              },
              pinTheme: PinTheme(
                shape: PinCodeFieldShape.circle,
                borderRadius: BorderRadius.circular(20),
                fieldHeight: 50,
                fieldWidth: 50,
                inactiveColor: Colors.purple,
                activeColor: Colors.orange,
                selectedColor: Colors.red,
              ),
              onCompleted: (value) {
                if (value == requiredNumber) {
                  print('valid pin');
                } else {
                  print('invalid pin');
                }
              },
            ),
          ),
          InkWell(
            ///////////////////////////إعادة الإرسال
            onTap: () {},
            child: Text(
              'إعادة الإرسال',
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF46C5DD)),
            ),
          ),
          SizedBox(height: 30.0),
          InkWell(
            child: button_start("تأكيد"),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) {
                return home_page();
              }));
            },
          ),
        ],
      ),
    );
  }
}
