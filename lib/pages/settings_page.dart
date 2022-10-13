import 'package:flutter/material.dart';
import 'package:iluck/bars/app_bar_settings.dart';
import 'package:iluck/models/build_dark_mode.dart';
import 'package:iluck/models/build_settings.dart';
import 'package:iluck/models/country_selection.dart';
import 'package:iluck/models/language_selection.dart';
import '../bars/buttom_bar.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);
  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: MyAppBarSettingsWidget(Size.fromHeight(60.0), "Ayarlar"),
      appBar: AppBarWidget2(Size.fromHeight(60.0), "Ayarlar"),
      bottomNavigationBar: const MyBottomNavigationBar(
        currentIndex: 2,
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: ListView(
                children: [
                  const SizedBox(
                    height: 1,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  BuildDarkMode(), //karanlık mod
                  const SizedBox(
                    height: 10,
                  ),
                  BuildCountrySelection(),
                  const SizedBox(
                    height: 10,
                  ),
                  BuildLanguageSelection(),
                  const SizedBox(
                    height: 10,
                  ),
                  buildCategory(
                      context,
                      "Reklamları kaldır.",
                      "Assets/reklam/advertising.png",
                      "ReklamlariKaldirPage",
                      125.0),
                  const SizedBox(
                    height: 10,
                  ),
                  buildCategory(
                      context,
                      "Kategorileri düzenle.",
                      "Assets/kategori/category (1).png",
                      "KategoriSecimPage",
                      95.0),
                  const SizedBox(
                    height: 10,
                  ),
                  buildCategory(
                      context,
                      "Kullanım şartları",
                      "Assets/sozlesme/note (1).png",
                      "KullanimSartlariPage",
                      133.0),
                  const SizedBox(
                    height: 10,
                  ),
                  buildCategory(
                      context,
                      "Gizlilik politikası",
                      "Assets/insurance/insurance.png",
                      "GizlilikPolitikasiPage",
                      133.0),
                  const SizedBox(
                    height: 10,
                  ),
                  buildCategory(context, "Bizi değerlendir..",
                      "Assets/degerlendir/review.png", "bos", 130.0),
                  const SizedBox(
                    height: 10,
                  ),
                  buildCategory(context, "Bizi instagramda takip edin",
                      "Assets/instagram/instagram (2).png", "bos", 37.0),
                  const SizedBox(
                    height: 10,
                  ),
                  buildCategory(context, "Uygulamayı paylaş",
                      "Assets/paylas/share (2).png", "bos", 113.0),
                  const SizedBox(
                    height: 10,
                  ),
                  buildCategory(context, "Destek",
                      "Assets/bize_sorun/question (1).png", "bos", 218.4),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
