import 'package:flutter/material.dart';
import 'package:non_stop/onboarding//Activation.dart';
import 'package:non_stop/constants.dart';

class Confirmation extends StatelessWidget {
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
              "تفعيل الحساب",
              style: TextStyle(
                  fontFamily: '$fontFamily',
                  fontWeight: FontWeight.w900,
                  fontSize: 20,
                  color: Color(fontColor)),
            ),
            SizedBox(
              height: h * 0.05,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "عميلنا العزيز",
                  style: TextStyle(
                      color: Color(fontColor3),
                      fontWeight: FontWeight.w900,
                      fontSize: 15),
                ),
                Text("من فصلك قم بادخال كود التفعيل",
                    style: TextStyle(
                        color: Color(fontColor3),
                        fontWeight: FontWeight.w900,
                        fontSize: 15)),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Text("المرسل لك على رقم الجوال التالى",
                      style: TextStyle(
                          color: Color(fontColor3),
                          fontWeight: FontWeight.w900,
                          fontSize: 15)),
                ),
              ],
            ),
            SizedBox(
              height: h * 0.01,
            ),
            Text("+966 2584 2547",
                style: TextStyle(
                    color: Color(fontColor),
                    fontWeight: FontWeight.bold,
                    fontSize: 15)),
            SizedBox(
              height: h * 0.04,
            ),
            gestureText("تعديل رقم الجوال"),
            SizedBox(
              height: h * 0.04,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                textForm2(),
                textForm2(),
                textForm2(),
                textForm2(),
              ],
            ),
            SizedBox(height: h * 0.02),
            gestureText("اعاده ارسال كود التفعيل"),
            Text(
              "1:55",
              style: TextStyle(
                fontFamily: '$fontFamily',
                color: Colors.red.shade700,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: h*0.06,),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: [
                    BoxShadow(
                      color: Color(fontColor),
                      blurRadius: 5,
                      offset: Offset(2, 2),
                    )
                  ]),
              width: 350,
              height: 50,
              child: RaisedButton(
                splashColor: Color(fontColor),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Activation()));
                },
                color: Color(fontColor),
                child: Text(
                  "ارسال",
                  style: TextStyle(
                      fontFamily: '$fontFamily',
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 17),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
