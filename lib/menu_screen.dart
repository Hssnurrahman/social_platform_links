import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'settings_screen.dart';
import './WhatsAppGroupLinks/whatsapp_category_screen.dart';
import './WhatsAppGroupLinks/whatsapp_category_list.dart';

class MenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final categories = Provider.of<WhatsAppCategoryList>(context).categories;

    return Scaffold(
      backgroundColor: Colors.grey[800],
      body: Container(
        margin: EdgeInsets.only(
          top: 45,
        ),
        child: Center(
          child: Column(
            children: <Widget>[
              Text(
                "Welcome To",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Social Platforms Links",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Column(
                children: <Widget>[
                  ListTile(
                    onTap: () {
                      Navigator.of(context).pushNamed(
                        WhatsAppCategoryScreen.routeName,
                      );
                    },
                    leading: CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.green,
                      child: Icon(
                        Icons.group,
                        color: Colors.white,
                      ),
                    ),
                    title: Text(
                      "WhatsApp Groups",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    trailing: CircleAvatar(
                      backgroundColor: Colors.green,
                      radius: 16,
                      child: Text(
                        "${categories.length}",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  Divider(
                    color: Colors.white,
                    thickness: 0.6,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: () {
          Navigator.of(context).pushNamed(
            SettingsScreen.routeName,
          );
        },
        child: Icon(
          Icons.settings,
          color: Colors.black,
          size: 30,
        ),
      ),
    );
  }
}
