import 'package:flutter/material.dart';
import 'package:iluck/pages/home.dart';
import '../models/build_kategori_button.dart';

class KategoriIlkSecimPage extends StatefulWidget {
  KategoriIlkSecimPage({Key? key}) : super(key: key);

  @override
  State<KategoriIlkSecimPage> createState() => _KategoriIlkSecimPage();
  List<String> trueFalseListesi = [];
}

class _KategoriIlkSecimPage extends State<KategoriIlkSecimPage> {
  var buttonColor = Colors.white;
  var textColor = Colors.black;

  void homePageGecis() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const HomePage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            children: [
              const SizedBox(
                height: 46,
              ),
              SizedBox(
                width: 100,
                height: 33,
                child: Image.asset("Assets/logo/Color-logo.png"),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "İlgi alanınızdan 3 kategori seçin",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(
                height: 5,
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
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BuildKategoriButton("Kitap"),
                  BuildKategoriButton("Petshop"),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BuildKategoriButton("Giyim"),
                  BuildKategoriButton("Yiyecek"),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BuildKategoriButton("Çek/Kupon"),
                  BuildKategoriButton("Kozmetik"),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BuildKategoriButton("Ev Eşyası"),
                  BuildKategoriButton("Hobi"),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BuildKategoriButton("Müzik Aleti"),
                  BuildKategoriButton("Kırtasiye"),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      margin: EdgeInsets.symmetric(horizontal: 15.0),
                      width: 150,
                      height: 50,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromRGBO(0, 84, 79, 1),
                            onPrimary: Colors.white,
                          ),
                          onPressed: () {
                            setState(() {});
                            homePageGecis();
                          },
                          child: const Text(
                            "Atla",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ))),
                  Container(
                      margin: EdgeInsets.symmetric(horizontal: 15.0),
                      width: 150,
                      height: 50,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromRGBO(0, 84, 79, 1),
                            onPrimary: Colors.white,
                          ),
                          onPressed: () {
                            /* Butonun rengini değiştirmek
                            if (buttonColor == Colors.white) {
                              buttonColor = Color.fromRGBO(0, 84, 79, 1);
                              textColor = Colors.white;
                            } else {
                              buttonColor = Colors.white;
                              textColor = Colors.black;
                            }
                             */
                            setState(() {});

                            homePageGecis();
                          },
                          child: const Text(
                            "Kaydet",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ))),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
