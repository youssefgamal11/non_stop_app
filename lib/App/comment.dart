import 'package:comment_box/comment/comment.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/rating/gf_rating.dart';
import 'package:getwidget/getwidget.dart';
import 'package:non_stop/constants.dart';

class TestMe extends StatefulWidget {

  @override
  _TestMeState createState() => _TestMeState();
}

class _TestMeState extends State<TestMe> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController commentController = TextEditingController();
  List filedata = [
    {
      'name': ' عبد الرحمن التهامى',
      'pic': 'https://tse4.mm.bing.net/th?id=OIP.uyrDfpdXkzEnsruFjjKRKQHaNK&pid=Api&P=0&w=300&h=300',
      'message': 'هذا النص مثال لنص يمكن ان يستبدل فى نفس المساحه'
    },
    {
      'name': 'احمد محمد',
      'pic': 'https://tse3.mm.bing.net/th?id=OIP.d5exBiROH6TYns4MchgbMAHaLH&pid=Api&P=0&w=300&h=300',
      'message': "هذا النص مثال لنص يمكن ان يستبدل فى نفس المساحه"
    },
    {
      'name': 'عمر صبري',
      'pic': 'https://tse3.mm.bing.net/th?id=OIP.8JoWH8mB2Xp2qJkoc1EQ8wHaLH&pid=Api&P=0&w=300&h=300',
      'message': "هذا النص مثال لنص يمكن ان يستبدل فى نفس المساحه"
    },
    {
      'name': 'عبدالله احمد',
      'pic': 'https://tse4.mm.bing.net/th?id=OIP.2kJisXufF3BaRvlO4ZgoLAHaFj&pid=Api&P=0&w=300&h=300',
      'message': "هذا النص مثال لنص يمكن ان يستبدل فى نفس المساحه"
    },
  ];
  double _rating =1  ;




  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    double _rating =1  ;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(


        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_ios,
            color: Color(fontColor),
          ),
        ),
        centerTitle: true,
        elevation: 0,
        title: Text(
          "التقيمات",
          style: TextStyle(
              color: Color(fontColor),
              fontFamily: "$fontFamily",
              fontSize: 20),
        ),
        backgroundColor: Colors.white,
      ),
      body: Container(
        width: w,
        height:h ,
        child: ListView(
          children: [
            containerStyle(
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [

                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [

                          Text(
                            "اضف تقيم للمنتج ",
                            style: TextStyle(
                                color: Color(fontColor), fontFamily: "$fontFamily"),
                          ) ,],),
                    ),
                    GFRating(
                      defaultIcon: Icon(
                        Icons.star ,
                        color: Colors.grey.shade300,
                      ),
                      filledIcon: Icon(
                        Icons.star ,
                        color: Colors.yellow.shade700,
                      ),
                      size: GFSize.SMALL,
                      value: _rating ,
                      onChanged: ( value){
                        setState(() {
                          value = _rating ;
                        });
                      },

                    ),
                    textForm( " اضف تعليق هنا "),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      width: 350,
                      height: 50,
                      child: RaisedButton(
                        splashColor: Color(fontColor),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>TestMe()));
                        },
                        color: Color(fontColor),
                        child: Text(
                          "ارسال ",
                          style: TextStyle(
                              fontFamily: '$fontFamily',
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 17),
                        ),
                      ),
                    ),


                  ],
                ),
                0.35),

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [

                  Text("التعليقات والتقيمات " , style: TextStyle(color: Color(fontColor) , fontFamily: "$fontFamily"),)

                ],),
            ),
            Container(
              width: double.infinity,
              height: 500,
              child: CommentBox(
                userImage:
                "https://lh3.googleusercontent.com/a-/AOh14GjRHcaendrf6gU5fPIVd8GIl1OgblrMMvGUoCBj4g=s400",
                child: commentChild(filedata),
                labelText: 'اكتب تعليق ...',
                withBorder: false,
                errorText: 'Comment cannot be blank',
                sendButtonMethod: () {
                  if (formKey.currentState.validate()) {
                    print(commentController.text);
                    setState(() {
                      var value = {
                        'name': 'New User',
                        'pic':
                        'https://lh3.googleusercontent.com/a-/AOh14GjRHcaendrf6gU5fPIVd8GIl1OgblrMMvGUoCBj4g=s400',
                        'message': commentController.text
                      };
                      filedata.insert(0, value);
                    });
                    commentController.clear();
                    FocusScope.of(context).unfocus();
                  } else {
                    print("Not validated");
                  }
                },
                formKey: formKey,
                commentController: commentController,
                backgroundColor: Colors.grey,
                textColor: Colors.white,
                sendWidget: Icon(Icons.send_sharp, size: 30, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }


  Widget commentChild(data) {
    double  w = MediaQuery.of(context).size.width ;
    double h = MediaQuery.of(context).size.height ;
    return ListView(
      children: [
        for (var i = 0; i < data.length; i++)
          Padding(
            padding: const EdgeInsets.fromLTRB(2.0, 8.0, 2.0, 0.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: w*0.8,
                    height: h*0.1,
                    decoration: BoxDecoration(
                      color: Color(0xFFF0F0F9),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            data[i]['name'],
                            style: TextStyle(fontSize: 12 , fontFamily: "$fontFamily"  ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(data[i]['message' ]),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () async {
                    // Display the image in large form.
                    print("Comment Clicked");
                  },
                  child: Container(
                    height: 50.0,
                    width: 50.0,
                    decoration: new BoxDecoration(
                        color: Colors.blue,
                        borderRadius:
                        new BorderRadius.all(Radius.circular(50))),
                    child: CircleAvatar(
                        radius: 50,
                        backgroundImage: NetworkImage(data[i]['pic'] + "$i")),
                  ),
                ),

              ],
            ),
          )
      ],
    );
  }
  Widget containerStyle(Widget widget, double x ) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: double.infinity,
        height: h * x,
        decoration: BoxDecoration(
          color: Color(0xFFF0F0F9),
          borderRadius: BorderRadius.circular(15),
        ),
        child: widget,
      ),
    );
  }
}
