import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:social_platform_links/WhatsAppGroupLinks/whatsapp_tabs_screen.dart';

import 'menu_screen.dart';
import 'settings_screen.dart';
import './WhatsAppGroupLinks/male_whatsapp_category_screen.dart';
import './WhatsAppGroupLinks/male_whatsapp_category_list.dart';
import './WhatsAppGroupLinks/male_whatsapp_group_link_list.dart';
import './WhatsAppGroupLinks/male_whatsapp_group_link_screen.dart';
import './WhatsAppGroupLinks/whatsapp_tabs_Screen.dart';

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
          value: MaleWhatsAppCategoryList(),
        ),
        ChangeNotifierProvider.value(
          value: MaleWhatsAppGroupLinkList(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MenuScreen(),
        routes: {
          SettingsScreen.routeName: (ctx) => SettingsScreen(),
          MaleWhatsAppCategoryScreen.routeName: (ctx) => MaleWhatsAppCategoryScreen(),
          MaleWhatsAppGroupLinkScreen.routeName: (ctx) => MaleWhatsAppGroupLinkScreen(),
        },
      ),
    );
  }
}
