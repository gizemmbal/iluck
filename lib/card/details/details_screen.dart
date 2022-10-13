import 'package:flutter/material.dart';
import 'package:iluck/bars/app_bar_2.dart';
import 'package:iluck/card/giveaway.dart';

import 'body.dart';

class DetailsScreen extends StatelessWidget {
  final Giveaway giveaway;

  const DetailsScreen({Key? key, required this.giveaway}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(249, 249, 249, 1),
      body: Body(giveaway: giveaway),
    );
  }
}
