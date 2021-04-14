import 'package:flutter/material.dart';
import 'package:non_stop/Onboarding/LogIn.dart';
import 'package:non_stop/constants.dart';
import 'Confirmation.dart';
class Signup extends StatelessWidget {
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
            Text(
              " انشاء حساب عميل",
              style: TextStyle(
                  fontFamily: '$fontFamily',
                  fontWeight: FontWeight.w900,
                  fontSize: 15,
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
                    " تسجيل دخول",
                    style: TextStyle(
                        fontFamily: ("$fontFamily"),
                        fontWeight: FontWeight.w900,
                        color: Color(fontColor)),
                  ),
                  onTap: () {

                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Login()));
                  },
                ),
                SizedBox(width: w * 0.01),
                Text(
                  " لديك حساب بالفعل؟",
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontFamily: '$fontFamily',
                      fontWeight: FontWeight.w200,
                      color: Color(fontColor)),
                ),
              ],
            ),
            SizedBox(
              height: h * 0.05,
            ),
            textForm("الاسم" , ),
            SizedBox(height: h * 0.03),
            textForm("رقم الجوال" ,),
            SizedBox(height: h * 0.03),
            textForm("المدينه" , Icon(Icons.arrow_drop_down) , ),
            SizedBox(height: h * 0.03),
            textForm("كلمه المرور", Icon(Icons.remove_red_eye_rounded ) , ),
            SizedBox(height: h * 0.03),
            textForm("تأكيد كلمه المرور", Icon(Icons.remove_red_eye_rounded) , ),
            SizedBox(
              height: h * 0.03,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: [
                    BoxShadow(
                      color: Color(fontColor),

                      blurRadius: 5,
                      offset: Offset(2,2),
                    )
                  ]),
              width: 350,
              height: 50,
              child: RaisedButton(

                splashColor: Color(fontColor),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Confirmation()));
                },
                color: Color(fontColor),
                child: Text(
                "انشاء حساب",
                  style: TextStyle(
                      fontFamily: '$fontFamily',
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 17),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
