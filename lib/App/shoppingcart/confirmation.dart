import 'package:flutter/material.dart';
import 'package:non_stop/constants.dart';

class Confirmation extends StatefulWidget {
  @override
  _ConfirmationState createState() => _ConfirmationState();
}

class _ConfirmationState extends State<Confirmation> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width ;
    double h =  MediaQuery.of(context).size.height;
    int selectedValue =1 ;
    return Scaffold(
      appBar: styleOfAppBar(
          "تأكيد الحجز", Icons.arrow_back_ios, context, "/shoppingcart"),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            containerStyle(
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            " ر.س 80.0",
                            style: TextStyle(color: Colors.green , fontWeight: FontWeight.bold),

                          ),
                          SizedBox(width: w*0.3 ,),
                          Text(
                            "فستان سهره احمر ",
                            style: TextStyle(
                                color: Color(fontColor),
                                fontFamily: "$fontFamily"),
                          ),
                          Image.asset("images/dress_PNG135.png" , width: w*0.07, height: h*0.07,),
                        ],
                      ),
                      Container(height: 1, color: Colors.grey.shade300,),
                      Row(
                        children: [
                          Text(
                            " ر.س 80.0",
                            style: TextStyle(color: Colors.green , fontWeight: FontWeight.bold),

                          ),
                          SizedBox(width: w*0.3 ,),
                          Text(
                            "فستان سهره احمر ",
                            style: TextStyle(
                                color: Color(fontColor),
                                fontFamily: "$fontFamily"),
                          ),
                          Image.asset("images/dress_PNG135.png" , width: w*0.07, height: h*0.07,),
                        ],
                      ),
                    ],
                  ),
                ),
                0.2,
                context),
            containerStyle(Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("#87432648"),
                  Text("رقم الطلب" , style: TextStyle(color: Color(fontColor) , fontFamily: "$fontFamily"),),
                ],
              ),
            ), 0.1, context) ,
            containerStyle( Padding(
              padding: const EdgeInsets.only(right: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("عنوان التوصيل" , style: TextStyle(color: Color(fontColor) , fontFamily: "$fontFamily"),),
                  Text("المنزل" ),
                  Text(" شارع   الزهور   الدمام" )

                ],),
            ), 0.15, context) ,
            containerStyle(Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  DropdownButton(
                    value: selectedValue,
                    items: [
                      DropdownMenuItem(child: Text("توصيل عادى") , value: 1, ),
                      DropdownMenuItem(child: Text("توصيل دليفري") , value: 2, ),


                    ],
                    onChanged: (value){
                      setState(() {
                        selectedValue =value ;
                      });
                    },),
                  Text("نوع التوصيل " , style: TextStyle(color: Color(fontColor) , fontFamily: "$fontFamily"),)


                ],),
            ), 0.1, context) ,
            containerStyle(Padding(
              padding: const EdgeInsets.only(right :15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [IconButton(icon: Icon(Icons.add , color: Color(fontColor), ), onPressed: (){}) , Text("الدفع" , style: TextStyle(color: Color(fontColor) , fontFamily: "$fontFamily"),)],),
            ), 0.08, context) ,
            containerStyle(Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("كود الخصم" , style: TextStyle(color: Color(fontColor) , fontFamily: "$fontFamily"),)
              ],), 0.08, context),
            containerStyle(Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text("تفاصيل السعر" , style: TextStyle(color: Color(fontColor) , fontFamily: "$fontFamily"),)
                  ,
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(" ر.س 80.00" , style: TextStyle(color: Colors.green , fontWeight: FontWeight.bold),),
                        Text("سعر المنتجات" , style: TextStyle(fontFamily: "$fontFamily", color: Colors.grey),)
                      ],),

                  ),
                  Container(height: 1, color: Colors.grey.shade300,),

                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(" ر.س 80.00" , style: TextStyle(color: Colors.green , fontWeight: FontWeight.bold),),
                        Text("سعر الشحن" , style: TextStyle(fontFamily: "$fontFamily", color: Colors.grey),)
                      ],),

                  ),

                  Container(height: 1, color: Colors.grey.shade300,),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(" ر.س 80.00" , style: TextStyle(color: Colors.green , fontWeight: FontWeight.bold , fontSize: 20),),
                        Text("اجمالى المبلغ" , style: TextStyle(fontFamily: "$fontFamily", color: Color(fontColor) , fontSize: 20),)
                      ],),

                  ),

                ],

              ),
            ), 0.31, context),
            downScreenButton("/confirmation2", context, "تأكيد الطلب"),


          ],
        ),
      ),
    );
  }
}
