import 'package:flutter/material.dart';
import 'package:non_stop/App/FirstPage.dart';
import 'package:non_stop/App/H&M_Page/product_rate/product_rate.dart';
import 'Onboarding/Activation.dart';
import 'Onboarding/LogIn.dart';
import 'Onboarding/SignUp.dart';
import 'Resetingpassword/passwordset.dart';
import 'Resetingpassword/reset_password.dart';
import 'Resetingpassword/return_password.dart';
import 'Resetingpassword/return_password2.dart';
import 'package:non_stop/App/products_return.dart';
import 'package:non_stop/App/settings/address/address.dart';
import 'package:non_stop/App/settings/address/insert_new_address.dart';
import 'package:non_stop/App/settings/contect_us.dart';
import 'package:non_stop/App/settings/my_purchases.dart';
import 'package:non_stop/App/settings/notification.dart';
import 'package:non_stop/App/settings/policy.dart';
import 'package:non_stop/App/settings/returnproduct/return_product.dart';
import 'package:non_stop/App/settings/settingHome.dart';
import 'package:non_stop/App/shoppingcart/confirmation.dart';
import 'package:non_stop/App/shoppingcart/confirmation2.dart';
import 'package:non_stop/App/shoppingcart/shopping_cart_main_page.dart';
import 'App/H&M_Page/product_details/product_details.dart';
import 'App/home/filter.dart';
import 'HomePage.dart';
import 'package:non_stop/App/settings/notification.dart';
import 'App/H&M_Page/h&m.dart';


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
        "/mypurchases": (_) => MyPurchases(),
        "/contectus": (_) => ContectUs(),
        "/address": (_) => Address(),
        "/policy": (_) => Policy(),
        "/returnproduct": (_) => ReturnProduct(),
        "/screen1": (_) => Screen1(),
        "/settinghome": (_) => Setting(),
        "/newaddress": (_) => InsertAddress(),
        "/firstpage": (_) => Screen1(),
        "/confirmation": (_) => Confirmation(),
        "/shoppingcart": (_) => ShoppingCart(),
        "/confirmation2": (_) => Confirmation2(),
        "/ProductDetails": (_) => ProductDetails(),
        "/Return": (_) => Return(),
        "/Filter": (_) => Filter(),
        "/HAndM": (_) => HAndM(),
        "/RateProduct": (_) => RateProduct(),
        "/Notification" :(_) => Notificate(),
        "/Signup" :(_) =>Signup(),
        "/ReturnPassword" :(_) =>ReturnPassword(),
        "/Login" :(_) =>Login(),
        "/Activation" : (_) => Activation(),
        "/ReturnPassword2" :(_) =>ReturnPassword2(),
        "/ResetPassword" :(_) => ResetPassword(),
        "/PasswordSet" :(_) => PasswordSet(),

      },
    );
  }
}
