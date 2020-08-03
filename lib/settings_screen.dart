import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  static const routeName = "/settings-screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(
          "Settings",
        ),
      ),
      body: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(
              Icons.smartphone,
              color: Colors.white,
              size: 20,
            ),
            title: Text(
              "Version",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            trailing: Text(
              "0.0.1",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          Divider(
            color: Colors.white,
            thickness: 0.6,
          )
        ],
      ),
    );
  }
}
