import 'package:flutter/material.dart';
import 'package:non_stop/pages/home/home.dart';
import 'package:non_stop/pages/profile/profile.dart';
import 'package:non_stop/pages/settings/settingHome.dart';
import 'package:non_stop/pages/shoppingcart/shopping_cart_main_page.dart';
import 'package:non_stop/shared/constants.dart';

class Screen1 extends StatefulWidget {
  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  int _currentindex = 3;
  static List<Widget> _myPages = <Widget>[
    Setting(),
    Profile(),
    ShoppingCart(),
    Home()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(fontColor4),
      body: _myPages[_currentindex],
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentindex,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("images/Icon_settings.png")),
            label: "",
          ),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("images/active-person.png")),
              label: ""),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("images/active-cart.png")),
            label: "",
          ),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("images/Icon_home1.png")), label: ""),
        ],
        selectedItemColor: Color(fontColor),
        onTap: (index) {
          setState(() {
            _currentindex = index;
          });
        },
      ),
    );
  }
}
