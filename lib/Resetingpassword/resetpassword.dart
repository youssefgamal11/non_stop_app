import 'package:flutter/material.dart';
import 'package:non_stop/ResetingPassword/passwordset.dart';
import 'package:non_stop/ResetingPassword/returnpassword2.dart';
import 'package:non_stop/constants.dart';
class ResetPassword extends StatelessWidget {
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
            Text("من فضلك قوم بادخال كلمه المرور الجديده"),
            SizedBox(height: h*0.1),

            textForm(" كلمه المرور الجديده" , Icon(Icons.remove_red_eye_rounded) ),
            SizedBox(height: h*0.04),
            textForm("تأكيد كلمه المرور الجديده" ,Icon(Icons.remove_red_eye_rounded)  ),
            SizedBox(height: h * 0.2 ),



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
                  Navigator.push(context, MaterialPageRoute(builder: (context) => PasswordSet()));
                },
                color: Color(fontColor),
                child: Text(
                  " ارسال",
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
