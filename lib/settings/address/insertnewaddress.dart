import 'package:flutter/material.dart';
import 'package:non_stop/constants.dart';
class insertaddress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double h =  MediaQuery.of(context).size.height ;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: appBarStyle("اضافه عنوان جديد", Icons.arrow_back_ios, context, "/address"),
      body: ListView(
        children: [
          Container(
            width: w,
            height: h*0.25,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/map.png"),
                    fit: BoxFit.cover
                )
            ),
          ) ,
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Center(child: Text("تفاصيل العنوان" , style: TextStyle(color: Colors.grey , fontFamily: "$fontFamily" , fontSize: 18),)),
          ) ,

          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: textForm("العنوان"),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: textForm("رقم البريد"),
              ) ,
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: textForm("اسم المكان"),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: downScreenButton("/address", context, "حفظ"),
          )

        ],
      )
    );
  }
}
