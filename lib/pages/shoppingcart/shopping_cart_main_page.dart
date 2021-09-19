import 'package:flutter/material.dart';
import 'package:non_stop/shared/constants.dart';

class ShoppingCart extends StatefulWidget {
  @override
  _ShoppingCartState createState() => _ShoppingCartState();
}

class _ShoppingCartState extends State<ShoppingCart> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    int x = 1 ;
    return Scaffold(
      appBar:
      styleOfAppBar("السله", Icons.arrow_back_ios, context, "/settinghome"),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            containerStyle(
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        icon: Icon(
                          Icons.delete,
                          color: Colors.red,
                        ),
                        onPressed: () {}),
                    Text(
                      "80.1 ر.س",
                      style: TextStyle(
                          color: Colors.green, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      width: w*0.3,
                      height: h*0.04,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(icon: Icon(Icons.add), onPressed: () {
                              setState(() {
                                x ++ ;
                              });
                            }),
                            Text(
                              "$x",
                              style: TextStyle(fontSize: 17),
                            ),
                            IconButton(
                                icon: Icon(Icons.minimize), onPressed: () {
                              setState(() {
                                x -- ;
                              });
                            })
                          ],
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "images/dress_PNG135.png",
                          width: w * 0.08,
                          height: h * 0.08,
                        ),
                        Text(
                          "فستان سهره اسود",
                          style: TextStyle(
                              color: Color(fontColor),
                              fontFamily: "$fontFamily"),
                        )
                      ],
                    )
                  ],
                ),
                0.15,
                context),
            SizedBox(
              height: h * 0.55,
            ),
            downScreenButton(pagename: "/confirmation", context: context,buttonname:  " دفع"),
          ],
        ),
      ),
    );
  }
}

