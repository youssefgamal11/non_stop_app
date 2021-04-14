import 'package:flutter/material.dart';
import 'package:non_stop/App/comment.dart';
import 'package:non_stop/constants.dart';
import 'package:getwidget/getwidget.dart';
import 'package:non_stop/App/h&m.dart';
class productDetails extends StatefulWidget {
  @override
  _productDetailsState createState() => _productDetailsState();
}

class _productDetailsState extends State<productDetails> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    double _rating = 4;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>handm()));},
          icon: Icon(
            Icons.arrow_back_ios,
            color: Color(fontColor),
          ),
        ),
        elevation: 0,
        title: Center(
          child: Text(
            "تفاصيل المنتج",
            style: TextStyle(
                color: Color(fontColor),
                fontFamily: "$fontFamily",
                fontSize: 20),
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          Center(
              child: Image.asset(
            "images/dress_PNG135.png",
            height: h * 0.4,
            width: w * 0.4,
          )),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                color: Color(fontColor5),
                borderRadius: BorderRadius.circular(15),
              ),
              width: double.infinity,
              height: h * 0.3,
              child: Column(
 children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          icon: Icon(
                            Icons.share,
                            color: Color(fontColor),
                          ),
                          onPressed: () {}),
                      Text(
                        "فستان وردي",
                        style: TextStyle(
                            color: Color(fontColor),
                            fontSize: 25,
                            fontFamily: "$fontFamily"),
                      ),
                      IconButton(
                          icon: Icon(
                            Icons.favorite,
                            color: Color(fontColor),
                          ),
                          onPressed: () {})
                    ],
                  ),
                  GFRating(
                    defaultIcon: Icon(
                      Icons.star ,
                      color: Colors.grey.shade300,
                    ),
                    filledIcon: Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    size: GFSize.SMALL,
                    value: _rating,
                    onChanged: (value) {
                      setState(() {
                        _rating = value;
                      });
                    },
                  ),
                  Column(
                    children: [
                      productDescription("368472", ":رقم المنتج"),
                      productDescription("2984812", ":الرقم الضريبي"),
                      productDescription("9قطع", ":القطع المتاحه"),
                      Row(

                        mainAxisAlignment: MainAxisAlignment.center,
                        children:
                      [
                        Image.asset("images/h&m.png", height: 30, width: 30,),

                        Text(":متجر" , style: TextStyle(color: Color(fontColor),fontFamily: "$fontFamily"),),

                      ],),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                color: Color(fontColor5),
                borderRadius: BorderRadius.circular(15),
              ),
              width: double.infinity,
              height: h * 0.1,
              child: Row(
                children: [

                  sizeButton("S") ,
                  sizeButton("L") ,
                  sizeButton("XL") ,
                  sizeButton("XXL", 12) ,
                  sizeButton("XXXL" , 10) ,
                  Text("المقاس" , style: TextStyle(color: Color(fontColor) , fontFamily: "$fontFamily" , fontSize: 20),)

                ],
              ),

            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                color: Color(fontColor5),
                borderRadius: BorderRadius.circular(15),
              ),
              width: double.infinity,
              height: h * 0.1,
              child: Row(
                children: [

                  colorButton(Colors.white) ,
                  colorButton(Colors.red) ,
                  colorButton(Colors.yellow) ,
                  colorButton(Colors.blue) ,
                  colorButton(Colors.teal) ,
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text("اللون" , style: TextStyle(color: Color(fontColor) , fontFamily: "$fontFamily" , fontSize: 20),),
                  )

                ],
              ),

            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                color: Color(fontColor5),
                borderRadius: BorderRadius.circular(15),
              ),
              width: double.infinity,
              height: h * 0.1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("80.00 ر.س", style: TextStyle(color: Colors.green , fontSize: 20 , fontFamily: "$fontFamily"),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("سعر المنتج ", style: TextStyle(color: Color(fontColor),fontSize: 20 , fontFamily: "$fontFamily") ,),
                  ),

                ],
              ),

            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>TestMe()));
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Color(fontColor5),
                  borderRadius: BorderRadius.circular(15),
                ),
                width: double.infinity,
                height: h * 0.06,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("التقيمات ", style: TextStyle(color: Color(fontColor),fontSize: 20 , fontFamily: "$fontFamily") ,),
                    ),

                  ],
                ),

              ),
            ),
          ),
          Column(

crossAxisAlignment: CrossAxisAlignment.end,            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("منتجات مشابهة", style: TextStyle(color: Color(fontColor) , fontFamily: "$fontFamily" ,fontWeight: FontWeight.bold ,fontSize: 20),),
              ) ,
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  clothesContainer(),
                  clothesContainer(),
                  clothesContainer(),
                  clothesContainer(),

                ],
              ),
            ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                color: Color(fontColor5),
                borderRadius: BorderRadius.circular(15),
              ),
              width: double.infinity,
              height: h * 0.06,
              child: Row(
                children: [
                  Text("يتم استبدال المنتج عن طريق الاسترجاع ثم الشراء بنفس القيمه" ,style: TextStyle(color: Colors.grey ),),
                  Text(" :ملحوظه" , style: TextStyle(color: Color(fontColor , ), fontFamily: "$fontFamily" , fontSize: 15),)
                ],
              )

            ),
          ),
          Row(
            children: [
              Container(
                width: w*.41,
                height: h*.1,
                child:             FlatButton(onPressed: (){}, color: Colors.red.shade900,child: Text("استرجاع المنتج" , style: TextStyle(color: Colors.white , fontFamily: "$fontFamily" ,fontSize: 17 ),)),

              ),
          SizedBox(width: w*.01,),

          Container(
            width: w*.58,
            height: h*.1,child:   FlatButton(onPressed: (){}, child: Text("اضف الى السله" ,style: TextStyle(color: Colors.white , fontFamily: "$fontFamily" , fontSize: 17),) ,color: Color(fontColor),) ,),

          ],),



        ],
      ),
    );
  }

  Widget productDescription(String x, String y) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Text(
            "$x",
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
          Text(
            " $y",
            style: TextStyle(color: Color(fontColor), fontFamily: "$fontFamily"),
          ),

        ],
      ),
    );
  }
  Widget sizeButton([String t ,  double s ]){
    return   ElevatedButton(
      style: ElevatedButton.styleFrom(
          shape: CircleBorder(),
          primary: Colors.white,
      ),
      child: Container(
        width: 30,
        height: 30,
        alignment: Alignment.center,
        decoration: BoxDecoration(shape: BoxShape.circle),
        child: Center(
          child: Text(
            '$t',
            style: TextStyle(fontSize: s , fontFamily: "$fontFamily" ,color: Color(fontColor)),
          ),
        ),
      ),
      onPressed: () {},
    );

  }
  Widget colorButton(Color color){
    return   ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: CircleBorder(),
        primary: color,
      ),
      child: Container(
        width: 30,
        height: 30,
        alignment: Alignment.center,
        decoration: BoxDecoration(shape: BoxShape.circle),
      ),
      onPressed: () {},
    );

  }
  Widget clothesContainer(){
    double h=  MediaQuery.of(context).size.height;
        double w=  MediaQuery.of(context).size.width;

    return     InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> productDetails()));
      },
      child: Padding(
        padding: const EdgeInsets.only(left:15.0),
        child: Container(

          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),        color: Colors.white                ),

          height:  h = h*0.23,
          width: w*0.28,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset("images/dress_PNG135.png" , height: 70 , width: 70,),
              ),
              Text("فستان وردى" ,style: TextStyle(color: Color(fontColor) , fontFamily: "$fontFamily"),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(icon: Icon(Icons.shopping_cart , color: Colors.grey,), onPressed: (){}),
                  Text("80.00 ر.س" , style: TextStyle(color: Colors.green, fontFamily: "$fontFamily"  ,fontSize: 13),),

                ],),

            ],
          ),
        ),
      ),
    ) ;

  }
}
