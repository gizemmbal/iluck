import 'package:flutter/material.dart';
import 'package:iluck/bars/app_bar.dart';
import 'package:iluck/bars/buttom_bar.dart';

import '../bars/app_bar_2.dart';

class TryPage extends StatefulWidget {
  const TryPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _TryPageState createState() => _TryPageState();
}

class _TryPageState extends State<TryPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget2(Size.fromHeight(60.0), "ILuck"),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          SizedBox(height: 100, width: 400, child: Text('try page'))
        ],
      ),
    );
  }
}
