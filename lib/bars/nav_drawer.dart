import 'package:flutter/material.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            buildHeader(context),
            buildMenuItems(context),
          ],
        ),
      ),
    );
  }

  Widget buildHeader(BuildContext context) => Container(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top,
        ),
      );

  Widget buildMenuItems(BuildContext context) => Column(
        children: [
          ListTile(
            title: const Text("Takı"),
            onTap: () {},
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Divider(
              height: 5.0,
              color: Color.fromRGBO(0, 0, 0, 1),
            ),
          ),
          ListTile(
            title: const Text("Elektronik"),
            onTap: () {},
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Divider(
              height: 5.0,
              color: Color.fromRGBO(0, 0, 0, 1),
            ),
          ),
          ListTile(
            title: const Text("Kitap"),
            onTap: () {},
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Divider(
              height: 5.0,
              color: Color.fromRGBO(0, 0, 0, 1),
            ),
          ),
          ListTile(
            title: const Text("Pet Shop"),
            onTap: () {},
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Divider(
              height: 5.0,
              color: Color.fromRGBO(0, 0, 0, 1),
            ),
          ),
          ListTile(
            title: const Text("Giyim"),
            onTap: () {},
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Divider(
              height: 5.0,
              color: Color.fromRGBO(0, 0, 0, 1),
            ),
          ),
          ListTile(
            title: const Text("Yiyecek"),
            onTap: () {},
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Divider(
              height: 5.0,
              color: Color.fromRGBO(0, 0, 0, 1),
            ),
          ),
          ListTile(
            title: const Text("Çek - Kupon"),
            onTap: () {},
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Divider(
              height: 5.0,
              color: Color.fromRGBO(0, 0, 0, 1),
            ),
          ),
          ListTile(
            title: const Text("Kozmetik"),
            onTap: () {},
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Divider(
              height: 5.0,
              color: Color.fromRGBO(0, 0, 0, 1),
            ),
          ),
          ListTile(
            title: const Text("Ev Eşyası"),
            onTap: () {},
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Divider(
              height: 5.0,
              color: Color.fromRGBO(0, 0, 0, 1),
            ),
          ),
          ListTile(
            title: const Text("Hobi Eşyası"),
            onTap: () {},
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Divider(
              height: 5.0,
              color: Color.fromRGBO(0, 0, 0, 1),
            ),
          ),
          ListTile(
            title: const Text("Müzik Aleti"),
            onTap: () {},
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Divider(
              height: 5.0,
              color: Color.fromRGBO(0, 0, 0, 1),
            ),
          ),
          ListTile(
            title: const Text("Kırtasiye"),
            onTap: () {},
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Divider(
              height: 5.0,
              color: Color.fromRGBO(0, 0, 0, 1),
            ),
          ),
          ListTile(
            title: const Text("Aksesuar"),
            onTap: () {},
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Divider(
              height: 5.0,
              color: Color.fromRGBO(0, 0, 0, 1),
            ),
          ),
          ListTile(
            title: const Text("Tatil - Seyahat"),
            onTap: () {},
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Divider(
              height: 5.0,
              color: Color.fromRGBO(0, 0, 0, 1),
            ),
          ),
          ListTile(
            title: const Text("Bahçe Dekorasyonu"),
            onTap: () {},
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Divider(
              height: 5.0,
              color: Color.fromRGBO(0, 0, 0, 1),
            ),
          ),
          ListTile(
            title: const Text("Sağlık"),
            onTap: () {},
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Divider(
              height: 5.0,
              color: Color.fromRGBO(0, 0, 0, 1),
            ),
          ),
          ListTile(
            title: const Text("Spor"),
            onTap: () {},
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Divider(
              height: 5.0,
              color: Color.fromRGBO(0, 0, 0, 1),
            ),
          ),
        ],
      );
}
