import "package:flutter/material.dart";
import 'package:fluttertoast/fluttertoast.dart';

var fontColor = 0xFF272A7C;
var fontColor2 = 0xFF898AB7;
var fontColor3 = 0xFF898AB7;
var fontColor4 = 0xFFF5F5FA;
var fontColor5 = 0xFFF0F0F9;
String fontFamily = "Neo Sans";
var formFieldColor = 0xFFEBEBF2;
const REGISTER = 'register';
const VERIFY = 'verify';
const ALLSTORES ='client/stores';
const ADS = 'client/sliders';
const LOGIN ='login';

Widget textForm(
    {String x,
    Icon y,
    @required TextEditingController controller,
      Function saved ,
    Function validate,
    Function onSubmit}) {
  return Padding(
    padding: const EdgeInsets.only(left: 30, right: 30),
    child: TextFormField(
      textAlign: TextAlign.center,
      controller: controller,
      onSaved: saved,
      validator: validate,
      onFieldSubmitted: onSubmit,
      decoration: InputDecoration(
        filled: true,
        fillColor: Color(formFieldColor),
        prefixIcon: y,
        hintText: "$x ",
        contentPadding: const EdgeInsets.only(left: 30, right: 30),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    ),
  );
}

Widget gestureText(String text) {
  return GestureDetector(
    child: Text(
      "$text",
      style: TextStyle(
        fontFamily: '$fontFamily',
        color: Colors.red.shade700,
        fontWeight: FontWeight.w500,
        decoration: TextDecoration.underline,
      ),
    ),
  );
}

Widget textForm2({TextEditingController controller}) {
  return Container(
    width: 60,
    height: 100,
    child: TextFormField(
      controller: controller,
      decoration: InputDecoration(
        filled: true,
        fillColor: Color(formFieldColor),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    ),
  );
}

Widget containerStyle(Widget widget, double x, BuildContext context) {
  double h = MediaQuery.of(context).size.height;
  double w = MediaQuery.of(context).size.width;
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      width: double.infinity,
      height: h * x,
      decoration: BoxDecoration(
        color: Color(0xFFF0F0F9),
        borderRadius: BorderRadius.circular(15),
      ),
      child: widget,
    ),
  );
}

Widget downScreenButton(
    {String pagename,
    BuildContext context,
    String buttonname,
    Function function}) {
  return Container(
    decoration:
        BoxDecoration(borderRadius: BorderRadius.circular(25), boxShadow: [
      BoxShadow(
        color: Color(fontColor),
        blurRadius: 5,
        offset: Offset(2, 2),
      )
    ]),
    width: 350,
    height: 50,
    child: RaisedButton(
      splashColor: Color(fontColor),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      onPressed: () {
        // Navigator.of(context).pushNamed("$pagename");
        function();
      },
      color: Color(fontColor),
      child: Text(
        " $buttonname",
        style: TextStyle(
            fontFamily: '$fontFamily',
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 17),
      ),
    ),
  );
}

Widget styleOfAppBar(
    String title, IconData icon, BuildContext context, String pagename,
    [Widget widget]) {
  return AppBar(
    centerTitle: true,
    title: Text(
      "$title",
      style: TextStyle(
          color: Color(fontColor), fontFamily: "$fontFamily", fontSize: 20),
    ),
    leading: IconButton(
        icon: Icon(
          icon,
          color: Color(fontColor),
        ),
        onPressed: () {
          Navigator.of(context).pushNamed("$pagename");
        }),
    elevation: 0,
    backgroundColor: Color(fontColor4),
  );
}

void showToast({@required String message}) {
  Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 8,
      backgroundColor: Colors.white,
      textColor: Colors.white,
      fontSize: 16.0);
}

void navigateAndFinish(context, widget) {
  Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => widget),
      (Route<dynamic> route) => false);
}

Widget defaultTextFormField({
  @required Function validate,
  @required TextEditingController controller,
  IconData icon,
  bool isPassword = false,
  Function onSubmit,
  @required String label,
}) {
  return TextFormField(
    validator: validate(),
    controller: controller,
    obscureText: isPassword,
    onFieldSubmitted: (s) {
      onSubmit(s);
    },
    decoration: InputDecoration(
      labelText: '$label',
      prefixIcon: Icon(icon),
      border: OutlineInputBorder(),
    ),
  );
}

Widget defalutButton({@required Function tap, @required String name}) {
  return InkWell(
    onTap: () {
      tap();
    },
    child: Container(
      width: double.infinity,
      height: 50,
      color: Colors.blue,
      child: Center(
          child: Text(
        '$name',
        style: TextStyle(color: Colors.white, fontSize: 17),
      )),
    ),
  );
}
