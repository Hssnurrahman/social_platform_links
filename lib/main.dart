import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'menu_screen.dart';
import 'settings_screen.dart';
import './WhatsAppGroupLinks/whatsapp_category_screen.dart';
import './WhatsAppGroupLinks/whatsapp_category_list.dart';
import './WhatsAppGroupLinks/whatsapp_group_link_list.dart';
import './WhatsAppGroupLinks/whatsapp_group_link_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: WhatsAppCategoryList(),
        ),
        ChangeNotifierProvider.value(
          value: WhatsAppGroupLinkList(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MenuScreen(),
        routes: {
          SettingsScreen.routeName: (ctx) => SettingsScreen(),
          WhatsAppCategoryScreen.routeName: (ctx) => WhatsAppCategoryScreen(),
          WhatsAppGroupLinkScreen.routeName: (ctx) => WhatsAppGroupLinkScreen(),
        },
      ),
    );
  }
}
