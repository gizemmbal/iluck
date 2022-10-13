import 'package:flutter/material.dart';
import 'nav_drawer.dart';

class AppBarWidget extends StatefulWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;
  final String title;
  //darkmode
  var appBarColorNormal = Colors.pink;
  var appBarColorDarkMode = Colors.black;
  var appBarColorUygulanan;
  int renkDegiskeni = 0;

  AppBarWidget(this.preferredSize, this.title);

  @override
  State<AppBarWidget> createState() => _AppBarWidgetState();
}

class _AppBarWidgetState extends State<AppBarWidget> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            iconTheme: IconThemeData(color: Colors.black),
            backgroundColor: Color.fromARGB(249, 249, 249, 249),
            elevation: 0.0,
            // leading: NavDrawer(),
            leading: IconButton(
              icon: Image.asset(
                "Assets/burger/burger.png",
                width: 30,
                height: 16,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            ),
            title: Container(
              width: 324,
              height: 32,
              decoration: BoxDecoration(
                color: Color.fromRGBO(147, 147, 147, 0.2),
                borderRadius: BorderRadius.circular(3),
              ),
              child: TextField(
                  onChanged: (value) {},
                  decoration: InputDecoration(
                    hintText: "Ara",
                    hintStyle: TextStyle(color: Colors.black),
                    enabledBorder: InputBorder.none,
                  )),
            ),
          ),
          body: Padding(
            padding: EdgeInsets.only(left: 16, right: 16),
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    height: 32.0,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(224, 224, 224, 1),
                    ),
                    child: TabBar(
                      indicator: BoxDecoration(
                          color: Color.fromRGBO(0, 84, 79, 1),
                          borderRadius: BorderRadius.circular(3)),
                      labelColor: Color.fromRGBO(249, 249, 249, 1),
                      unselectedLabelColor: Color.fromRGBO(37, 37, 37, 1),
                      tabs: [
                        Tab(text: "Bana Özel"),
                        Tab(text: "Keşfet"),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
