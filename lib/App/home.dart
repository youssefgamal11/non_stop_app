import 'package:flutter/material.dart';
import 'package:non_stop/constants.dart';

import 'h&m.dart';
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        "images/logo.png",
                      ),
                    )),
              ),
              Row(
                children: [
                  Container(
                    width: 20,
                    height: 20,
                    child: ImageIcon(
                      AssetImage("images/Icon_filter.png"),
                      color: Color(fontColor),
                    ),
                  ),
                ],
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: TextFormField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                suffixText: "ابحث هنا",
                filled: true,
                fillColor: Colors.white,
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: Image.asset(
                    "images/Shape.png",
                    width: -5,
                    height: -5,
                  ),
                ),
                contentPadding: const EdgeInsets.only(left: 30, right: 30),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 180,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/Untitled.png"),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Column(
              children: [

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [


                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>handm()));
                      },
                      child: Image.asset("images/h&m.png" , width: 180, height: 100 , fit: BoxFit.cover,),
                    ),
                    GestureDetector(
                      onTap: (){},
                      child: Image.asset("images/hollister.png" , height: 100, width: 180, fit: BoxFit.cover,),
                    ),
                  ],
                ),

              ],
            ),
          ),
        ],
      ),
    )
    ;
  }
}
