import 'package:flutter/material.dart';
import 'package:non_stop/App/FirstPage.dart';
import 'package:non_stop/constants.dart';

class PasswordSet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xFFFBFBFF),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: h * 0.04,
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
                )),
            Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/logo11.png"), fit: BoxFit.fill),
              ),
            ) ,
            SizedBox(height: h*0.1),
            Text(
              " تم تحديث كلمه المرور بنجاح",
              style: TextStyle(
                  fontFamily: '$fontFamily',
                  fontWeight: FontWeight.w900,
                  fontSize: 20,
                  color: Color(fontColor)),
            ),
            SizedBox( height: h*0.08,) ,
            downScreenButton("/screen1", context, "استمرار")

          ],
        ),
      ),
    );
  }
}
