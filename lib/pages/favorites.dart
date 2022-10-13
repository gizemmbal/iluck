import 'package:flutter/material.dart';

import '../bars/app_bar.dart';
import '../bars/buttom_bar.dart';
import '../bars/nav_drawer.dart';
import '../card/contents.dart';

class Favorites extends StatelessWidget {
  const Favorites({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget2(Size.fromHeight(100.0), "Favoriler"),
//      drawer: const NavigationDrawer(),
      bottomNavigationBar: const MyBottomNavigationBar(
        currentIndex: 1,
      ),
      body: Contents(),
    );
  }
}
