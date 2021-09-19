import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:non_stop/shared/constants.dart';
import '../h&m_components.dart';
import 'product_details_components.dart';

class ProductDetails extends StatefulWidget {
  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    double _rating = 4;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: styleOfAppBar("تفاصيل المنتج", Icons.arrow_back_ios, context, "/HAndM"),
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
                      Icons.star,
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
                        children: [
                          Image.asset(
                            "images/h&m.png",
                            height: 30,
                            width: 30,
                          ),
                          Text(
                            ":متجر",
                            style: TextStyle(
                                color: Color(fontColor),
                                fontFamily: "$fontFamily"),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        containerStyle(Row(
          children: [
            sizeButton("S" , context , 0.14 ),
            sizeButton("L" , context , 0.14),
            sizeButton("XL" , context , 0.14),
            sizeButton("XXL",  context , 0.16),
            sizeButton("XXXL",  context , 0.18),
            Padding(
              padding: const EdgeInsets.only(left :5.0),
              child: Text(
                "المقاس",
                style: TextStyle(
                    color: Color(fontColor),
                    fontFamily: "$fontFamily",
                    fontSize:17),
              ),
            )
          ],
        ), 0.1, context),
          containerStyle(Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              colorButton(Colors.white , context),
              colorButton(Colors.red , context),
              colorButton(Colors.yellow , context),
              colorButton(Colors.blue  ,context),
              colorButton(Colors.teal , context),
              Padding(
                padding: const EdgeInsets.only(right: 2 , left: 12),
                child: Text(
                  "اللون",
                  style: TextStyle(
                      color: Color(fontColor),
                      fontFamily: "$fontFamily",
                      fontSize: 17),
                ),
              )
            ],
          ), 0.1, context),
         containerStyle(Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Text(
                 "80.00 ر.س",
                 style: TextStyle(
                     color: Colors.green,
                     fontSize: 20,
                     fontFamily: "$fontFamily"),
               ),
             ),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Text(
                 "سعر المنتج ",
                 style: TextStyle(
                     color: Color(fontColor),
                     fontSize: 20,
                     fontFamily: "$fontFamily"),
               ),
             ),
           ],
         ), 0.1, context),
          containerStyle(Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, "/RateProduct");
                  },
                  child: Text(
                    "التقيمات ",
                    style: TextStyle(
                        color: Color(fontColor),
                        fontSize: 20,
                        fontFamily: "$fontFamily"),
                  ),
                ),
              ),
            ],
          ), 0.08, context),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "منتجات مشابهة",
                  style: TextStyle(
                      color: Color(fontColor),
                      fontFamily: "$fontFamily",
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    clothesContainer(context),
                    clothesContainer(context),
                    clothesContainer(context),
                    clothesContainer(context),
                    clothesContainer(context),


                  ],
                ),
              ),
            ],
          ),
          containerStyle(Row(
            children: [
              Text(
                "يتم استبدال المنتج عن طريق الاسترجاع ثم الشراء بنفس القيمه",
                style: TextStyle(color: Colors.grey , fontSize: 12),

                maxLines: 1,
              ),
              Text(
                " :ملحوظه",
                style: TextStyle(
                    color: Color(
                      fontColor,
                    ),
                    fontFamily: "$fontFamily",
                    fontSize: 15),
              )
            ],
          ), 0.06, context),
          Row(
            children: [
              Container(
                width: w * .41,
                height: h * .1,
                child: FlatButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/Return");
                    },
                    color: Colors.red.shade900,
                    child: Text(
                      "استرجاع المنتج",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "$fontFamily",
                          fontSize: 17),
                    )),
              ),
              SizedBox(
                width: w * .01,
              ),
              Container(
                width: w * .58,
                height: h * .1,
                child: FlatButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/shoppingcart");
                  },
                  child: Text(
                    "اضف الى السله",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "$fontFamily",
                        fontSize: 17),
                  ),
                  color: Color(fontColor),
                ),
              ),
            ],
          ),
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
            style:
                TextStyle(color: Color(fontColor), fontFamily: "$fontFamily"),
          ),
        ],
      ),
    );
  }



}
