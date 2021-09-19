import 'package:flutter/material.dart';
import 'package:non_stop/shared/constants.dart';

class ContectUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: styleOfAppBar("تواصل معنا", Icons.arrow_back_ios, context, "/settinghome")
,        backgroundColor: Color(fontColor4),
        body: ListView(
          children: [

            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Text(
                    "للشكاوى والاقتراحات",
                    style: TextStyle(color: Colors.grey, fontSize: 22),
                  ),
                ),
                formField(context, "البريد الاكترونى", 2),
                formField(context, " نص الرساله", 2 , 5),
                SizedBox(height: 20,),
                downScreenButton(pagename: "/contectus",context:  context,buttonname:  "ارسال")
              ],
            ),
          ],
        ));
  }

  Widget formField(BuildContext context, String text, double value , [int x]) {
  return Padding(
    padding: const EdgeInsets.all(4.0),
    child: Container(
        margin: EdgeInsets.all(value),
        child: TextField(
          maxLines:  x,
          decoration: InputDecoration(

              filled: true,
              fillColor: Colors.white,
              contentPadding: const EdgeInsets.only(left: 300),
              hintText: " $text",
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(12))),
        ),
      ),
  );
  }
}
