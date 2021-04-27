import 'package:flutter/material.dart';
import 'package:non_stop/constants.dart';

class Filter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey.shade400,
        body: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 320),
          child: Card(
            color: Color(fontColor4),
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(icon: Icon(Icons.close), iconSize: 20,onPressed: () {}),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left :150.0),
                        child: Text(
                          "فلتر",
                          style: TextStyle(
                              color: Color(fontColor), fontFamily: "$fontFamily" , fontSize: 18),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: h * 0.03,
                ),
                textForm("النوع", Icon(Icons.arrow_drop_down)),
                SizedBox(
                  height: h * 0.03,
                ),
                textForm("المدينه", Icon(Icons.arrow_drop_down)),
                SizedBox(
                  height: h * 0.03,
                ),
                textForm("السعر", Icon(Icons.arrow_drop_down)),
                SizedBox(
                  height: h * 0.03,
                ),
                downScreenButton("/screen1", context, "بحث"),
                SizedBox(
                  height: h * 0.03,
                ),
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
