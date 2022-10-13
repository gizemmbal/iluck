import 'package:flutter/material.dart';
import 'package:iluck/pages/favorites.dart';
import 'package:iluck/pages/home.dart';
import 'package:iluck/pages/ilk_kategori_secim.dart';
import 'package:iluck/pages/settings_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application...uhregbrhgbaaaa

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ILuck',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/ilkKategoriPage',
      //initialRoute: '/homePage',
      routes: {
        '/ilkKategoriPage': (context) => KategoriIlkSecimPage(),
        '/homePage': (context) => const HomePage(),
        '/favorites': (context) => const Favorites(),
        '/settings': (context) => const SettingsPage(),
      },
    );
  }
}
