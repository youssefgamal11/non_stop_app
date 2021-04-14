import 'package:flutter/material.dart';
import 'package:non_stop/constants.dart';

class address extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: appBarStyle(
            "العناويين", Icons.arrow_back_ios_rounded, context, "/settinghome"),
        body: Column(
          children: [
            containerStyle(
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                              icon: Icon(
                                Icons.delete,
                                size: 35,
                                color: Colors.red,
                              ),
                              onPressed: () {}),
                          Text(
                            "العمل",
                            style: TextStyle(
                                color: Color(fontColor),
                                fontSize: 25,
                                fontFamily: "$fontFamily"),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(" الدمام      "),
                          Text("  شارع الزهور     "),
                          Text("      151"),
                        ],
                      ),
                    )
                  ],
                ),
                0.15,
                context),
            containerStyle(
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                              icon: Icon(
                                Icons.delete,
                                size: 35,
                                color: Colors.red,
                              ),
                              onPressed: () {}),
                          Text(
                            "العمل",
                            style: TextStyle(
                                color: Color(fontColor),
                                fontSize: 25,
                                fontFamily: "$fontFamily"),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(" الدمام      "),
                          Text("  شارع الزهور     "),
                          Text("      151"),
                        ],
                      ),
                    )
                  ],
                ),
                0.15,
                context),
            Container(
                width: w * 0.9,
                height: h * 0.07,
                color: Color(fontColor4),
                child: OutlinedButton(

                    onPressed: () {
                      Navigator.pushNamed(context, '/newaddress');

                    },
                    child: Text(
                      "اضافه عنوان جديد",
                      style: TextStyle(color: Color(fontColor), fontSize: 17 , fontFamily: "$fontFamily"),
                    )))
          ],
        ));
  }
}
