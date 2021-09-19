import 'package:flutter/material.dart';
import 'package:non_stop/shared/constants.dart';
import 'h&m_components.dart';

class HAndM extends StatefulWidget {
  @override
  _HAndMState createState() => _HAndMState();
}

class _HAndMState extends State<HAndM> with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
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
                  style: TextStyle(fontFamily: "$fontFamily", fontSize: 18),
                ),
              ),
              Tab(
                child: Text(
                  "رجالي",
                  style: TextStyle(fontFamily: "$fontFamily", fontSize: 18),
                ),
              ),
              Tab(
                child: Text(
                  "اطفال",
                  style: TextStyle(fontFamily: "$fontFamily", fontSize: 18),
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
            onPressed: () {
             Navigator.pushNamed(context, "/screen1");
            },
            icon: Icon(
              Icons.arrow_back_ios_outlined,
              color: Color(fontColor),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            ListView(
              children: [
                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        button(),
                        button(),
                        button(),
                        button(),
                        button(),
                      ],
                    )),
                Row(
                  children: [
                    clothesContainer(context),
                    clothesContainer(context),
                    clothesContainer(context),
                  ],
                ),
              ],
            ),
            Tab(
              child: Text(
                "لا توجد منتجات",
                style: TextStyle(
                    color: Color(fontColor),
                    fontSize: 20,
                    fontFamily: "$fontFamily"),
              ),
            ),
            Tab(
              child: Text("لا توجد منتجات",
                  style: TextStyle(
                      color: Color(fontColor),
                      fontSize: 20,
                      fontFamily: "$fontFamily")),
            ),
          ],
          controller: _tabController,
        ));
  }


}
