import 'package:flutter/material.dart';
import 'package:non_stop/App/FirstPage.dart';
import 'package:non_stop/onboarding//SignUp.dart';
import 'package:non_stop/constants.dart';
import 'package:non_stop/ResetingPassword/return_password.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color(0xFFFBFBFF),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: h * 0.03,
            ),
            Center(
              child: Container(
                width: 180,
                height: 150,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage(
                    "images/logo.png",
                  ),
                )),
              ),
            ),
            SizedBox(height: h * 0.03),
            Text(
              "تسجيل الدخول",
              style: TextStyle(
                  fontFamily: '$fontFamily',
                  fontWeight: FontWeight.w900,
                  fontSize: 20,
                  color: Color(fontColor)),
            ),
            SizedBox(
              height: h * 0.05,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  child: Text(
                    "انشاء حساب",
                    style: TextStyle(
                        fontFamily: ("$fontFamily"),
                        fontWeight: FontWeight.w900,
                        color: Color(fontColor)),
                  ),
                  onTap: () {

                   Navigator.pushNamed(context, "/Signup");
                  },
                ),
                SizedBox(width: w * 0.02),
                Text(
                  "ليس لديك حساب؟",
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontFamily: '$fontFamily',

                      color: Color(fontColor2)),
                ),
              ],
            ),
            SizedBox(
              height: h * 0.08,
            ),
            textForm("رقم الجوال" ),
            SizedBox(height: h * 0.05 ),
            textForm("كلمه المرور", Icon(Icons.remove_red_eye_rounded) , ),
            SizedBox(height: h * 0.1),
            GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, "/ReturnPassword");
              },
              child: Text(
                "نسيت كلمه المرور",
                style: TextStyle(
                  fontFamily: '$fontFamily',
                  color: Colors.red.shade700,
                  fontWeight: FontWeight.w500,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
            SizedBox(
              height: h * 0.1,
            ),
            downScreenButton("/firstpage", context, "تسجيل الدخول")

               ],
        ),
      ),
    );
  }
}
