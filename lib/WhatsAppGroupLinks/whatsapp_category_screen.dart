import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'whatsapp_category_list.dart';
import 'whatsapp_group_link_screen.dart';
import 'whatsapp_group_link_list.dart';

class WhatsAppCategoryScreen extends StatefulWidget {
  static const routeName = "/whatsapp-category-screen";

  @override
  _WhatsAppCategoryScreenState createState() => _WhatsAppCategoryScreenState();
}

class _WhatsAppCategoryScreenState extends State<WhatsAppCategoryScreen> {
  @override
  Widget build(BuildContext context) {
    final categories = Provider
        .of<WhatsAppCategoryList>(context)
        .categories;

    print(
      categories,
    );


    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          "WhatsAppGroups",
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(
          top: 15,
        ),
        child: Column(
          children: <Widget>[
            Text(
              "Categories",
              style: TextStyle(
                fontSize: 25,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 10,
            ),
//            Divider(
//              color: Colors.white,
//              thickness: 0.6,
//            ),
            ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemBuilder: (ctx, i) {

                final category = categories[i].categoryId;

                final groupLinks =
                    Provider.of<WhatsAppGroupLinkList>(context).whatsAppGroupLinks;

                final categoryWiseGroups = groupLinks
                    .where(
                      (element) => element.category.contains(
                    category,
                  ),
                )
                    .toList();

                print(categoryWiseGroups.length,);

                return Column(
                  children: <Widget>[
                    ListTile(
                      onTap: () {
                        Navigator.of(context).pushNamed(
                            WhatsAppGroupLinkScreen.routeName,
                            arguments: {
                              "whatsAppCategoryName": categories[i]
                                  .categoryName,
                              "whatsAppCategoryId": categories[i].categoryId,
                            }
                        );
                        print(
                          "Button Is Tapped",
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
                        categories[i].categoryName,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      trailing: CircleAvatar(
                        backgroundColor: Colors.green,
                        radius: 16,
                        child: Text(
                          "${categoryWiseGroups.length}",
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
                );
              },
              itemCount: categories.length,
            ),
          ],
        ),
      ),
    );
  }
}
