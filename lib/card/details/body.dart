import 'package:flutter/material.dart';
import 'package:iluck/card/giveaway.dart';

class Body extends StatelessWidget {
  final Giveaway giveaway;

  const Body({Key? key, required this.giveaway}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size =
        MediaQuery.of(context).size; //bize toplam yükseklik ve genişlik sağlar
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(height: 24),
          Stack(children: [
            Image.network(giveaway.imageUrl,
                width: size.width, height: size.width),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black54,
                  border: Border.all(
                    width: 0,
                  ),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ),
          ]),
          Container(
            height: 60,
            width: size.width,
            child: Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Icon(
                        Icons.account_circle,
                        size: 48,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          giveaway.nick,
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 48, top: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "Assets/begen/like.png",
                          height: 32,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(giveaway.like.toString(),
                              style: TextStyle(
                                fontSize: 16,
                              )),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: Image.asset(
                            "Assets/yorum/chat.png",
                            height: 32,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0, top: 8),
                          child: Text(giveaway.comment.toString(),
                              style: TextStyle(
                                fontSize: 16,
                              )),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 350,
            width: size.width,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Flexible(
                      child: Text(
                    giveaway.description,
                  )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
