import 'package:flutter/material.dart';

import 'male_whatsapp_category_screen.dart';
import 'female_whatsapp_category_Screen.dart';

class WhatsAppTabScreen extends StatefulWidget {

  static const routeName = "/whatsapp-tabs-screen";

  @override
  _WhatsAppTabScreenState createState() => _WhatsAppTabScreenState();
}

class _WhatsAppTabScreenState extends State<WhatsAppTabScreen> {

  bool isSearching = false;

  List<Widget> pages = [
    MaleWhatsAppCategoryScreen(),
    FemaleWhatsAppCategoryScreen(),
  ];

  int selectedPageIndex = 0;

  void selectPage(int index) {
    setState(() {
      selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: !isSearching
            ? Text(
          "WhatsApp Groups",
        )
            : TextField(
//          onChanged: () {
//            return filterCategories(search);
//          },
          style: TextStyle(
            color: Colors.white,
          ),
          decoration: InputDecoration(
            hintText: "Search Categories ....",
            hintStyle: TextStyle(
              color: Colors.white,
            ),
            focusColor: Colors.white,
          ),
        ),
        actions: <Widget>[
          isSearching
              ? IconButton(
            icon: Icon(Icons.cancel),
            onPressed: () {
              setState(() {
                this.isSearching = false;
              });
            },
          )
              : IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              setState(() {
                this.isSearching = true;
              });
            },
          ),
        ],
      ),
      body: pages[selectedPageIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: selectPage,
        backgroundColor: Colors.green,
        currentIndex: selectedPageIndex,
        selectedItemColor: Colors.white,
        type: BottomNavigationBarType.shifting,
        iconSize: 19,
        elevation: 5,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).bottomAppBarTheme.color,
            icon: Icon(
              Icons.person,
            ),
            title: Text(
              "Male WhatsApp Groups",
//              style: titleTextStyle_1,
            ),
          ),
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).bottomAppBarTheme.color,
            icon: Icon(
              Icons.person,
            ),
            title: Text(
              "Female WhatsApp Groups",
//              style: titleTextStyle_2,
            ),
          ),

        ],
      ),
    );
  }
}
