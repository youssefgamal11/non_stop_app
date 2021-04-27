import 'package:flutter/material.dart';
import 'package:non_stop/constants.dart';
Widget sizeButton(String t,  BuildContext context , double width) {
  double h = MediaQuery.of(context).size.height;
  double w = MediaQuery.of(context).size.width;
  return Container(
    width: w*width,
    alignment: Alignment.center,
    decoration: BoxDecoration(shape: BoxShape.circle),

    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: CircleBorder(),
        primary: Colors.white,
      ),
      child:  Text(
      '$t',
      style: TextStyle(
          fontSize: 12,
          fontFamily: "$fontFamily",
          color: Color(fontColor)),
    ),
      onPressed: () {},
    ),
  );
}

Widget colorButton(Color color , BuildContext context) {
  double h = MediaQuery.of(context).size.height;
  double w = MediaQuery.of(context).size.width;

  return Container(
    width: w*0.09,
    height: h*0.09,
    alignment: Alignment.center,
    decoration: BoxDecoration(shape: BoxShape.circle),
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: CircleBorder(),
        primary: color,
      ),

      onPressed: () {},
    ),
  );
}

