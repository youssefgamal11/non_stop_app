import 'package:flutter/material.dart';
import 'package:non_stop/App/FirstPage.dart';
import 'package:non_stop/settings/address/insertnewaddress.dart';
import 'file:///C:/Users/DELL/AndroidStudioProjects/non_stop/lib/settings/address/address.dart';
import 'package:non_stop/settings/contectUs.dart';
import 'package:non_stop/settings/myPurchases.dart';
import 'package:non_stop/settings/policy.dart';
import 'file:///C:/Users/DELL/AndroidStudioProjects/non_stop/lib/settings/returnproduct/returnproduct.dart';
import 'package:non_stop/settings/settingHome.dart';
import 'HomePage.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      routes: {
        "/mypurchases" : (_) => myPurchases(),
        "/contectus" : (_)=>contectus(),
        "/address" : (_) => address(),
        "/policy" : (_) => policy(),
        "/returnproduct" : (_) => returnProduct(),
        "/screen1" : (_)=> Screen1(),
        "/settinghome" : (_) => setting(),
        "/newaddress" : (_) => insertaddress(),
        "/firstpage" : (_) => Screen1(),
        "/contectus" : (_) => contectus(),


      },
    );
  }
}
