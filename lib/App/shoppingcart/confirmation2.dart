import 'package:flutter/material.dart';
import 'package:non_stop/constants.dart';
class Confirmation2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height ;
    double w= MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Image.asset("images/logo.png" , height: h*0.18 , width: w*0.5, ),
          Image.asset("images/group111.png" , height: h*0.5,width: w*0.8,),
            Text("تم الدفع" , style: TextStyle(color: Color(fontColor) , fontFamily: "$fontFamily", fontSize: 20),) ,
            Text("تم ارسال طلبك بنجاح" ,style: TextStyle(color: Color(fontColor) , fontFamily: "$fontFamily", fontSize: 20)),
            SizedBox(
              height:  h*0.03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("#4738473" , style: TextStyle(color:Colors.grey),),
                Text(" :رقم الطلب  " , style: TextStyle(color: Color(fontColor ) , fontFamily: "$fontFamily"),) ,
              ],
            ),
            SizedBox(
              height: h*0.02,
            ),
            gestureText("نسخ رقم الطلب"),
            SizedBox(height: h*0.04,),
            downScreenButton("/firstpage", context, "استمرار")
        ],),
      ),
    );
  }
}
