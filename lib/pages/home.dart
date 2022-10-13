import 'package:flutter/material.dart';
import 'package:iluck/bars/app_bar.dart';
import 'package:iluck/bars/app_bar_2.dart';
import 'package:iluck/bars/buttom_bar.dart';
import 'package:iluck/bars/nav_drawer.dart';
import 'package:iluck/card/contents.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      //appBar: AppBarWidget(size, "ILuck"),
      //appBar: AppBarWidget2(Size.fromHeight(70.0), "ILuck"),
      appBar: AppBarWidget(Size.fromHeight(100.0), "ILuck"),
//      drawer: const NavigationDrawer(),
      drawer: NavDrawer(),
      bottomNavigationBar: const MyBottomNavigationBar(
        currentIndex: 0,
      ),
      body: Contents(),
    );
  }
}
