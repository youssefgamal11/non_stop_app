import 'package:flutter/material.dart';
import 'package:non_stop/shared/constants.dart';
class ReturnPassword extends StatelessWidget {
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
              "استرجاع كلمه المرور ",
              style: TextStyle(
                  fontFamily: '$fontFamily',
                  fontWeight: FontWeight.w900,
                  fontSize: 20,
                  color: Color(fontColor)),
            ),
            SizedBox(
              height: h * 0.06,
            ),
            Text("من فضلك قوم بادخال رقم الجوال"),
            SizedBox(height: h*0.1),

            textForm(x:"رقم الجوال" ),
            SizedBox(height: h * 0.3 ),



            downScreenButton(pagename: "/ReturnPassword2",context:  context,buttonname:  "ارسال")

          ],


        ),
      ),
     
    );

  }
}
