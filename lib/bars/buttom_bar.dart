import 'package:flutter/material.dart';

class MyBottomNavigationBar extends StatefulWidget {
  final currentIndex;
  const MyBottomNavigationBar({super.key, required this.currentIndex});

  @override
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Color.fromRGBO(0, 84, 79, 1),
      selectedFontSize: 14,
      selectedItemColor: Color.fromRGBO(249, 249, 249, 1),
      unselectedItemColor: Color.fromRGBO(249, 249, 249, 1),
      currentIndex: widget.currentIndex,
      onTap: (index) => {
        print(index),
        if (index == 0)
          {
            Navigator.pushReplacementNamed(context, '/homePage'),
          }
        else if (index == 1)
          {Navigator.pushReplacementNamed(context, '/favorites')}
        else if (index == 2)
          {
            Navigator.pushReplacementNamed(context, '/settings'),
          },
      },
      iconSize: 30.0,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: [
        BottomNavigationBarItem(
          //icon: SvgPicture.asset("Assets/favorite.svg"),
          icon: ImageIcon(widget.currentIndex != 0
              ? AssetImage("Assets/home/home (1).png")
              : AssetImage("Assets/home/home (2).png")),
          label: 'Home',
          //backgroundColor: Colors.green,
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(widget.currentIndex != 1
              ? AssetImage("Assets/fav/favorite (1).png")
              : AssetImage("Assets/fav/favorite (2).png")),
          label: 'Favorites',
          //backgroundColor: Colors.black,
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(widget.currentIndex != 2
              ? AssetImage("Assets/ayarlar/settings (1).png")
              : AssetImage("Assets/ayarlar/settings (3).png")),
          label: 'Settings',
          //backgroundColor: Colors.pink),
        )
      ],
    );
  }
}
