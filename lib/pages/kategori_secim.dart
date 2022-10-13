import 'package:flutter/material.dart';
import 'package:iluck/bars/app_bar_settings.dart';

import '../bars/app_bar_icon.dart';
import '../models/build_kategori_button.dart';

class KategoriSecimPage extends StatefulWidget {
  KategoriSecimPage({Key? key}) : super(key: key);

  @override
  State<KategoriSecimPage> createState() => _KategoriSecimPageState();
  List<String> trueFalseListesi = [];
}
//  height: 50,
//         width: 150,
//         child: kategoriButtons("ilk butonun ismi bu"),

class _KategoriSecimPageState extends State<KategoriSecimPage> {
  var buttonColor = Colors.white;
  var textColor = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidgetIcon(Size.fromHeight(60.0), "Kategorileri Düzenle"),
      body: Center(
        child: Container(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //kategoriButtons("ilk butonun ismi bu", 1, Colors.blue),
                  //kategoriButtons("İKİNCİ butonun ismi bu", 2, Colors.grey),
                  BuildKategoriButton("Takı"),
                  BuildKategoriButton("Elektronik"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BuildKategoriButton("Kitap"),
                  BuildKategoriButton("Petshop"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BuildKategoriButton("Giyim"),
                  BuildKategoriButton("Yiyecek"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BuildKategoriButton("Çek/Kupon"),
                  BuildKategoriButton("Kozmetik"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BuildKategoriButton("Ev Eşyası"),
                  BuildKategoriButton("Hobi"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BuildKategoriButton("Müzik Aleti"),
                  BuildKategoriButton("Kırtasiye"),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                  margin:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
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
                          textColor = Colors.white;
                        } else {
                          buttonColor = Colors.white;
                          textColor = Colors.black;
                        }
                        setState(() {});
                      },
                      child: Text(
                        "Kaydet",
                        style: TextStyle(color: textColor),
                      )))
            ],
          ),
        ),
      ),
    );
  }
  /*
  Widget kategoriButtons(
    String buttonTitle,
    int buttonId,
    var buttonColor,
  ) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: buttonColor,
        onPrimary: Colors.white,
      ),
      onPressed: () {
        if (buttonId == 1) {
          buttonColor = buttonColor = Colors.red;
        }
        setState(() {});
      },
      child: Text(buttonTitle),
    );
  }
  */

}
