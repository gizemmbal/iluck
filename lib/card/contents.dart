import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:iluck/constant/constant.dart';
import 'package:iluck/card/details/details_screen.dart';
import 'package:iluck/card/giveaway.dart';

class Contents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
                child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
              child: GridView.builder(
                  itemCount: giveaways.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 20.0,
                      crossAxisSpacing: 20.0,
                      childAspectRatio: 0.75),
                  itemBuilder: (context, index) => ItemCard(
                        index: index,
                        giveaway: giveaways[index],
                        press: () => {
                          print("Ayşe"),
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DetailsScreen(
                                        giveaway: giveaways[index],
                                      )))
                        },
                      )),
            )),
          ],
        ),
      ),
    );
  }
}

class ItemCard extends StatefulWidget {
  final Giveaway giveaway;
  final int index;
  final Function()? press;

  const ItemCard({
    Key? key,
    required this.giveaway,
    required this.index,
    this.press,
  }) : super(key: key);

  @override
  State<ItemCard> createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {
  bool isItemSelected = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    bool tik = true;
    return GestureDetector(
      onTap: widget.press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Container(
                height: 224,
                width: 200,
                decoration: BoxDecoration(
                    border: Border.all(width: 3.0, color: Colors.grey),
                    color: widget.giveaway.color,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.08),
                        blurRadius: 24,
                        offset: const Offset(0, 16),
                      ),
                    ]),
                child: Column(
                  children: [
                    Stack(children: [
                      Image.network(widget.giveaway.imageUrl),
                      Container(
                        padding: EdgeInsets.only(top: 10.0, right: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(0, 84, 79, 1),
                                    border: Border.all(
                                      width: 0,
                                    ),
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                  child: IconButton(
                                    icon: Image.asset(
                                      !isItemSelected
                                          ? ("Assets/fav/favorite (1).png")
                                          : ("Assets/fav/favorite (2).png"),
                                      width: 20,
                                      height: 20,
                                    ),
                                    onPressed: () {
                                      if (widget.index == widget.giveaway.id) {
                                        setState(() {
                                          isItemSelected = !isItemSelected;
                                        });
                                      }
                                    },
                                  ),
                                ),
                                const SizedBox(
                                  height: 50.0,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(0, 84, 79, 1),
                                    border: Border.all(
                                      width: 0,
                                    ),
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                  child: IconButton(
                                    icon: Image.asset(
                                      "Assets/instagram/instagram (3).png",
                                      height: 20,
                                      width: 20,
                                    ),
                                    onPressed: () {},
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    ]),
                    Row(
                      children: [
                        Padding(
                          padding:
                              EdgeInsets.only(top: 5.0, left: 5.0, right: 5.0),
                          child: Image.asset(
                            "Assets/begen/like.png",
                            height: 14,
                            width: 14,
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 5.0, left: 5.0, right: 5.0),
                            child: RichText(
                              text: TextSpan(
                                style: TextStyle(color: Constant.kTextColor),
                                children: [
                                  TextSpan(
                                    text: "${widget.giveaway.like}",
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.only(
                                top: 5.0, left: 5.0, right: 5.0),
                            child: Image.asset(
                              "Assets/yorum/chat.png",
                              height: 14,
                              width: 14,
                            )),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(
                                right: 5, left: 5, top: 5),
                            child: RichText(
                              text: TextSpan(
                                style: TextStyle(color: Constant.kTextColor),
                                children: [
                                  TextSpan(
                                    text: "${widget.giveaway.comment}",
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 5.0, left: 10.0, right: 5.0),
                        child: Text(widget.giveaway.category1),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 5.0),
                        child: Text(" - "),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 5.0, left: 5.0, right: 10.0),
                        child: Text(widget.giveaway.category2),
                      ),
                    ])
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
