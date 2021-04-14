import 'package:flutter/material.dart';
import 'package:non_stop/constants.dart';

class returnProduct extends StatefulWidget {
  @override
  _returnProductState createState() => _returnProductState();
}

class _returnProductState extends State<returnProduct> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: Color(fontColor4),
          appBar: AppBar(
            elevation: 0,
            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios),
            ),
            centerTitle: true,
            backgroundColor: Color(fontColor4),
            title: Text("استرجاع المنتج" , style: TextStyle(color: Color(fontColor) , fontFamily: "$fontFamily"  , fontSize: 20 ),),
            bottom: TabBar(
              labelStyle: TextStyle(
                fontSize: 20
              ),
              labelColor: Color(fontColor),
              indicatorSize: TabBarIndicatorSize.label,
              tabs: [
                Tab(
                  text: ("جاريه" )  ,
                ),
                Tab(
                  text: "منتهيه",
                )
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Text("page numer 1"),
              Text("page2"),
            ],
          ),
        ));
  }
}
