import 'package:flutter/material.dart';
import 'package:non_stop/App/ProductDetails.dart';
import 'package:non_stop/Onboarding/LogIn.dart';
import 'package:non_stop/constants.dart';

import 'FirstPage.dart';

class handm extends StatefulWidget {
  @override
  _handmState createState() => _handmState();
}

class _handmState extends State<handm> with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this  );
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xFFFBFBFF),
      appBar: AppBar(
        bottom: TabBar(
          unselectedLabelColor: Color(fontColor3),
          labelColor: Color(fontColor),
          tabs: [
            Tab(
              child: Text(
                "نسائي ",
                style: TextStyle(fontFamily: "$fontFamily" , fontSize: 18),
              ),
            ),
            Tab(
              child: Text(
                "رجالي",
                style: TextStyle(fontFamily: "$fontFamily" , fontSize: 18),
              ),
            ),
            Tab(
              child: Text(
                "اطفال",
                style: TextStyle(fontFamily: "$fontFamily" , fontSize: 18),
              ),
            ),
          ],
          controller: _tabController,
          indicatorColor: Color(fontColor),
          indicatorSize: TabBarIndicatorSize.tab,
        ),
        bottomOpacity: 1,
        backgroundColor: Color(formFieldColor),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 60),
              child: Container(
                width: 60,
                height: 60,
                child: Image.asset(
                  "images/h&m.png",
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ],
        ),
        leading: IconButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Screen1()));
          },
          icon: Icon(
            Icons.arrow_back_ios_outlined,
            color: Color(fontColor),
          ),
        ),

      ),
      body:TabBarView(

        children: [
          ListView(

            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                   Button(),
                    Button(),
                    Button(),
                    Button(),
                    Button(),
                  ],
                )
              ),
              
              Row(
                children: [
                  clothesContainer() ,
                  clothesContainer(),
                  clothesContainer(),
                ],
              ),
            ],
          ),
          Tab(child: Text("لا توجد منتجات" ,style: TextStyle(color: Color(fontColor) , fontSize: 20 , fontFamily: "$fontFamily"),),),
          Tab(child: Text("لا توجد منتجات" , style: TextStyle(color: Color(fontColor) , fontSize: 20 , fontFamily: "$fontFamily")),),
        ],
        controller: _tabController,

      )
    );
  }
  Widget Button(){
    return  Padding(
      padding: const EdgeInsets.all(5.0),
      child: OutlineButton(

        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),

        onPressed: (){},
        child: Text("قسم فرعي " , style:TextStyle(color: Color(fontColor) , fontFamily: "$fontFamily"),),
      ),
    );
  }
   Widget clothesContainer(){
    double  h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width ;

    return InkWell(
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
