import 'package:flutter/material.dart';
import 'package:non_stop/shared/constants.dart';
class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height ;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(fontColor4),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Center(
              child: GestureDetector(
                onTap: (){},
                child:Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    image: DecorationImage(
                      image: AssetImage("images/model.jpg" ),
                      fit: BoxFit.cover,
                    ),

                  ),
                ),
              ),
            ) ,
            Text("عبد الرحمن محمد" , style: TextStyle( fontFamily: "$fontFamily" , color: Color(fontColor) , fontSize: 20),),
            SizedBox(height: h*0.03,),
           Expanded(
             child: Column(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
               details( "رقم الجوال", "1454597", Icons.mobile_screen_share),
               details("البريد الاكترونى", "example&emil.com", Icons.email_outlined),
               details("الدوله", "الممكله العربيه السعوديه", Icons.language),
               details("كلمه المرور", "*******", Icons.lock_outline),
             ],),
           )


          ],
        ),
      ),
    );
  }
  Widget details( String x, String name , IconData icon){
    return             Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(

        mainAxisAlignment: MainAxisAlignment.end,              children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text("$x " , style: TextStyle(color: Color(fontColor) , fontFamily: "$fontFamily" , fontSize: 16),),
            Text("$name" , style: TextStyle(color:Colors.grey , fontSize: 15),),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Icon(icon, size: 30, color: Colors.black54,),
        ),
      ],),
    );

  }
}
