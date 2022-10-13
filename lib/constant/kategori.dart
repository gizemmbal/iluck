import 'package:flutter/material.dart';

class Kategori {
  final String title;
  final int id;
  Kategori({
    required this.title,
    required this.id,
  });
}

List<Kategori> Kategoriler = [
  Kategori(title: "takı", id: 1),
  Kategori(title: "tak2", id: 2),
  Kategori(title: "takı3", id: 3),
  Kategori(title: "takı5", id: 4),
  Kategori(title: "takı7", id: 5),
  Kategori(title: "takı7", id: 6),
  Kategori(title: "takı9", id: 7),
];
