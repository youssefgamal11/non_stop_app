import 'package:flutter/material.dart';
import 'package:non_stop/shared/constants.dart';
class Notificate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: styleOfAppBar(
          "الاشعارات", Icons.arrow_back_ios, context, "/settinghome"),
      body: SingleChildScrollView(
        child: Column(
          children: [
            containerStyle(
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [

                    Text("هذا النص مثال لنص يمكن ان يستبدل فى نفس المكان",
                      style: TextStyle( color: Color(fontColor) , fontFamily: "$fontFamily" , fontSize: 12),
                      maxLines: 2,
                    ),
                    Container(
                      child: Image.asset("images/appIcon.png" ,width: 70, height: 700,),
                    ),
                  ],
                ),
                0.15,
                context),
            containerStyle(
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [

                    Text("هذا النص مثال لنص يمكن ان يستبدل فى نفس المكان",
                      style: TextStyle( color: Color(fontColor) , fontFamily: "$fontFamily" , fontSize: 12),
                      maxLines: 2,
                    ),
                    Container(
                      child: Image.asset("images/appIcon.png" ,width: 70, height: 700,),
                    ),
                  ],
                ),
                0.15,
                context),

          ],
        ),
      ),
    );
  }
}
