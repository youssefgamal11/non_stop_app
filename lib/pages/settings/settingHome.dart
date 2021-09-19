import 'package:flutter/material.dart';
import 'package:non_stop/shared/constants.dart';

class Setting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(fontColor4),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "المزيد",
          style: TextStyle(
              color: Color(fontColor), fontFamily: "$fontFamily", fontSize: 20),
        ),
        leading: IconButton(
            icon: Icon(
              Icons.notification_important,
              color: Color(fontColor),
            ),
            onPressed: () {
              Navigator.pushNamed(context, "/Notification");
            }),
        elevation: 0,
        backgroundColor: Color(fontColor4),
      ),
      body: ListView(
        children: [
          gestureDetectorcompmnents(
              "images/Icon_home.png", "الرئيسيه", context, "screen1"),
          space(context),
          gestureDetectorcompmnents(
              "images/active-cart.png", "مشترياتى", context, "mypurchases"),
          space(context),
          gestureDetectorcompmnents(
              "images/location (2).png", "العناويين", context, "address"),
          space(context),
          gestureDetectorcompmnents(
              "images/help.png", "تواصل معنا", context, "contectus"),
          space(context),
          gestureDetectorcompmnents(
              "images/return.png", "استرجاع المنتج", context, "returnproduct"),
          space(context),
          gestureDetectorcompmnents(
              "images/policy.png", "سياسه الاستخدام", context, "policy"),
          space(context),
          gestureDetectorcompmnents(
            "images/lang.png",
            "english",
            context,
          ),
          space(context),
          gestureDetectorcompmnents(
            "images/share.png",
            "مشاركه التطبيق",
            context,
          ),
          space(context),
          gestureDetectorcompmnents(
            "images/Icon_exit.png",
            "تسجيل الخروج",
            context,
          ),
        ],
      ),
    );
  }

  Widget space(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    return SizedBox(
      height: h * 0.06,
    );
  }

  Widget gestureDetectorcompmnents(
      String imageicon, String x, BuildContext context,
      [String pagename]) {
    double w = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed("/$pagename");
      },
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.arrow_back_ios_rounded,
              color: Color(fontColor),
            ),
            Row(
              children: [
                Text(
                  "$x",
                  style: TextStyle(
                      color: Color(fontColor),
                      fontSize: 16,
                      fontFamily: "$fontFamily"),
                ),
                SizedBox(
                  width: w * 0.05,
                ),
                ImageIcon(
                  AssetImage("$imageicon"),
                  color: Color(fontColor),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
