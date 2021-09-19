import 'package:conditional_builder/conditional_builder.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:non_stop/pages/home/cubit.dart';
import 'package:non_stop/pages/home/states.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:non_stop/shared/constants.dart';
import 'ads_model.dart';
import 'model.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return BlocProvider(
      create: (BuildContext context) => HomeCubit()
        ..getHomeData()
        ..getAdsData(),
      child: BlocConsumer<HomeCubit, HomeStates>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = HomeCubit.get(context);
          return Scaffold(
            backgroundColor: Color(fontColor4),
            body: ListView(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Container(
                          width: w * 0.2,
                          height: h * 0.08,
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
                      padding: const EdgeInsets.only(right: 8.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, "/Filter");
                        },
                        child: Container(
                          height: h * 0.03,
                          child: ImageIcon(
                            AssetImage("images/Icon_filter.png"),
                            color: Color(fontColor),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: h * 0.04,
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
                      contentPadding:
                          const EdgeInsets.only(left: 30, right: 30),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: ConditionalBuilder(
                      condition:
                          (cubit.adsModel != null && cubit.homeModel != null),
                      builder: (context) => widgetBuilder(
                          model: cubit.adsModel, home: cubit.homeModel),
                      fallback: (context) =>
                          Center(child: CircularProgressIndicator())),
                ),

              ],
            ),
          );
        },
      ),
    );
  }

 

  Widget widgetBuilder({AdsModel model, HomeModel home}) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CarouselSlider(
            items: model.data
                .map(
                  (e) => Image(
                    image: NetworkImage('${e.image}'),
                    width: double.infinity,
                    fit: BoxFit.fill,
                  ),
                )
                .toList(),
            options: CarouselOptions(
              height: 150,
              initialPage: 0,
              viewportFraction: 1.0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(seconds: 1),
              autoPlayCurve: Curves.fastOutSlowIn,
              scrollDirection: Axis.horizontal,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              color: Color(0xffF4F5FA),
              child: GridView.count(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 20,
                childAspectRatio: 1 / 0.6,
                children: List.generate(home.data.length,
                    (index) => buildGridProduct(home.data[index])),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildGridProduct(DataInfo model) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
          child: Image(
            image: NetworkImage('${model.cover}'),
            width: 170,
            height: 80,
            fit: BoxFit.fill,
          ),
        )
      ],
    );
  }
}
