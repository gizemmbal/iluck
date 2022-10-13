import 'package:flutter/material.dart';

class AppBarWidget2 extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;
  final String title;

  AppBarWidget2(this.preferredSize, this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 0,
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 45),
        child: Stack(
          children: [
            Container(
              width: 375,
              height: 45, //41'di
              decoration: BoxDecoration(
                color: Color.fromRGBO(0, 84, 79, 1),
                borderRadius: BorderRadius.circular(6),
              ),
              child: Center(
                  child: Text(
                title,
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              )),
            ),
          ],
        ),
      ),
    );
  }
}
