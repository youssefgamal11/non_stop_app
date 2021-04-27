import 'package:flutter/material.dart';
import 'package:non_stop/constants.dart';
Widget button() {
  return Padding(
    padding: const EdgeInsets.all(5.0),
    child: OutlineButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      onPressed: () {},
      child: Text(
        "قسم فرعي ",
        style: TextStyle(color: Color(fontColor), fontFamily: "$fontFamily"),
      ),
    ),
  );
}

Widget clothesContainer(BuildContext context) {
  double h = MediaQuery.of(context).size.height;
  double w = MediaQuery.of(context).size.width;

  return InkWell(
    onTap: () {
      Navigator.pushNamed(context, "/ProductDetails");
    },
    child: Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.white),
        height:  h * 0.25,
        width: w * 0.3,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                "images/dress_PNG135.png",
                height: h*0.1,
                width: w*0.1,
              ),
            ),
            Text(
              "فستان وردى",
              style: TextStyle(
                  color: Color(fontColor), fontFamily: "$fontFamily"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                    icon: Icon(
                      Icons.shopping_cart,
                      color: Colors.grey,
                    ),
                    onPressed: () {}),
                Text(
                  "80.00 ر.س",
                  style: TextStyle(
                      color: Colors.green,
                      fontFamily: "$fontFamily",
                      fontSize: 10),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
