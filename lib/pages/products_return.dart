import 'package:flutter/material.dart';
import 'package:non_stop/shared/constants.dart';
class Return extends StatefulWidget {
  @override
  _ReturnState createState() => _ReturnState();
}

class _ReturnState extends State<Return> {
  bool value = false ;

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height ;
double w = MediaQuery.of(context).size.width ;
    return Scaffold(
      backgroundColor: Color(fontColor4),
      appBar: styleOfAppBar("المنتجات", Icons.arrow_back_ios, context, "/ProductDetails"),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row

                (
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                Text("80.00 س ر" , style: TextStyle(color:Colors.green , fontFamily: "$fontFamily"),) ,
                SizedBox(
                  width: w*0.2,
                ),
                Column(children: [
                  Text("فستان سهره احمر" , style: TextStyle(color: Color(fontColor) , fontFamily: "$fontFamily"),) ,
                  Text(" العدد  : 1") ,

                ],),
                Image.asset("images/dress_PNG135.png" , width: w*0.06, height: h*0.06, ),

                Checkbox(value: this.value,onChanged: (bool value ){ setState(() {
                  this.value= value ;
                });}) ,




              ],),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(height: 1, color: Colors.grey.shade300,),
            ) ,
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row

                (
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Text("80.00 س ر" , style: TextStyle(color:Colors.green , fontFamily: "$fontFamily"),) ,
                  SizedBox(
                    width: w*0.2,
                  ),
                  Column(children: [
                    Text("فستان سهره احمر" , style: TextStyle(color: Color(fontColor) , fontFamily: "$fontFamily"),) ,
                    Text(" العدد  : 1") ,

                  ],),
                  Image.asset("images/dress_PNG135.png" , width: w*0.06, height: h*0.06, ),

                  Checkbox(value: this.value,onChanged: (bool value ){ setState(() {
                    this.value= value ;
                  });}) ,




                ],),
            ),
            SizedBox(height: h*0.55,),
            downScreenButton(pagename: "/address",context:  context,buttonname:  "استرجاع"),

          ],
        ),
      ),
    );
  }
}
