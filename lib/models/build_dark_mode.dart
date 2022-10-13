import 'package:flutter/material.dart';
import 'package:iluck/bars/app_bar_2.dart';

class BuildDarkMode extends StatefulWidget {
  //BuildDarkMode(this.title);
  const BuildDarkMode({super.key});
  //var title;
  @override
  _BuildDarkModeState createState() => _BuildDarkModeState();
}

class _BuildDarkModeState extends State<BuildDarkMode> {
  bool trueFalsee = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      //onTap: (){
      //Navigator.push(context,MaterialPageRoute(builder: (context) => HomePage()));
      //},
      child: Container(
        height: 45,
        width: 300,
        child: Row(
          children: [
            Container(
                width: 20,
                height: 20,
                child: Image.asset(
                  "Assets/dark_mode/night-mode.png",
                )),
            const SizedBox(
              width: 15,
            ),
            const Text(
              "Mod:",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              width: 240.0,
            ),
            Switch(
                activeColor: Color.fromRGBO(0, 84, 79, 1),
                value: trueFalsee,
                onChanged: (value) {
                  trueFalsee = !trueFalsee;
                  if (value == false) {
                    AppBarWidget(Size.fromHeight(100.0), "ILuck")
                        .renkDegiskeni = 0;
                  } else if (value == true) {
                    AppBarWidget(Size.fromHeight(100.0), "ILuck")
                        .renkDegiskeni = 1;
                  }
                  setState(() {
                    debugPrint("set state çalıştı..");
                  });
                }),
          ],
        ),
      ),
    );
  }
}
