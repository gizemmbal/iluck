import 'package:flutter/material.dart';
import 'package:iluck/pages/kategori_secim.dart';

var buttonColor = Color.fromARGB(255, 255, 184, 208);
var buttonTextColor = Colors.black;

class BuildKategoriButton extends StatefulWidget {
  String? title;

  @override
  State<BuildKategoriButton> createState() => _BuildKategoriButtonState();
  BuildKategoriButton(String title) {
    this.title = title;
  }
}

class _BuildKategoriButtonState extends State<BuildKategoriButton> {
  int basildi = 0;
  @override
  void initState() {
    // TODO: implement initState
    buttonColor = Colors.white;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      width: 150,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: buttonColor,
          onPrimary: Colors.white,
        ),
        onPressed: () {
          if (buttonColor == Colors.white) {
            buttonColor = Color.fromRGBO(0, 84, 79, 1);

            buttonTextColor = Colors.white;
          } else {
            buttonColor = Colors.white;
            buttonTextColor = Colors.black;
          }
          setState(() {});
        },
        child: Text(
          widget.title.toString(),
          style: TextStyle(fontSize: 20, color: buttonTextColor),
        ),
      ),
    ));
  }
}
