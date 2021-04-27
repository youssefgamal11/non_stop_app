import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:non_stop/constants.dart';

class ReturnProduct extends StatefulWidget {
  @override
  _ReturnProductState createState() => _ReturnProductState();
}

class _ReturnProductState extends State<ReturnProduct> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: Color(fontColor4),
          appBar: AppBar(
            elevation: 0,
            leading: IconButton(
              color: Color(fontColor),
              icon: Icon(Icons.arrow_back_ios),
              onPressed: (){
                Navigator.of(context).pushNamed("/settinghome");
              },
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
              ListView.builder(itemCount:  5, itemBuilder: (BuildContext context , int index){

                return containerStyle(Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [

                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("رقم الطلب" , style: TextStyle(color: Color(fontColor) , fontFamily: "$fontFamily"),) ,
                        Text("321412143"),
                        Text("100 ر.س " ,  style: TextStyle(color: Colors.green , fontSize: 20 , fontWeight: FontWeight.bold),) ,

                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("#23213321" , style: TextStyle(color: Color(fontColor) , fontFamily: "$fontFamily"),) ,
                        Text("sat,oct 19"),
                        Text("المنزل " ,  style: TextStyle(color: Color(fontColor) , fontFamily: "$fontFamily"),) ,
                        Text("151     شارع الزهور    الدمام"),
                      ],
                    ),


                  ],

                ), 0.2, context);
              },),
              ListView.builder(itemCount:  5, itemBuilder: (BuildContext context , int index){

                return containerStyle(Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [

                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("رقم الطلب" , style: TextStyle(color: Color(fontColor) , fontFamily: "$fontFamily"),) ,
                        Text("321412143"),
                        Text("100 ر.س " ,  style: TextStyle(color: Colors.green , fontSize: 20 , fontWeight: FontWeight.bold),) ,

                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("#23213321" , style: TextStyle(color: Color(fontColor) , fontFamily: "$fontFamily"),) ,
                        Text("sat,oct 19"),
                        Text("المنزل " ,  style: TextStyle(color: Color(fontColor) , fontFamily: "$fontFamily"),) ,
                        Text("151     شارع الزهور    الدمام"),
                      ],
                    ),


                  ],

                ), 0.2, context);
              },),

            ],
          ),
        ));
  }
}
