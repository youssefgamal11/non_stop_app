import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:non_stop/constants.dart';
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color(fontColor4),
      body: ListView(
        children: [
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left :8.0),
                  child: Container(
                    width: w*0.2,
                    height: h*0.08,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            "images/logo.png",
                          ),
                        )),
                  ),
                ),
              ),
             Padding(
               padding: const EdgeInsets.only(right :8.0),
               child: InkWell(
                 onTap: (){
                   Navigator.pushNamed(context, "/Filter");
                 },
                 child: Container(
                   height: h*0.03,
                   child: ImageIcon(
                     AssetImage("images/Icon_filter.png"),
                     color: Color(fontColor),
                   ),
                 ),
               ),
             ),
            ],
          ),
          SizedBox(height: h*0.04,),
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
                        Navigator.pushNamed(context, "/HAndM");
                      },
                      child: Image.asset("images/h&m.png" , width: w*0.45, height: h*0.15 , fit: BoxFit.cover,),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.pushNamed(context, "/HAndM");
                      },
                      child: Image.asset("images/hollister.png" , height: h*0.15, width: w*0.45, fit: BoxFit.cover,),
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
