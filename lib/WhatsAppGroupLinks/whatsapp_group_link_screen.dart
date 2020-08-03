import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

import 'whatsapp_group_link_list.dart';

class WhatsAppGroupLinkScreen extends StatefulWidget {
  static const routeName = "/whatsapp-group-link-screen";

  @override
  _WhatsAppGroupLinkScreenState createState() =>
      _WhatsAppGroupLinkScreenState();
}

class _WhatsAppGroupLinkScreenState extends State<WhatsAppGroupLinkScreen> {
  Map data = {};

  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context).settings.arguments;

    print(
      data,
    );

    final groupLinks =
        Provider.of<WhatsAppGroupLinkList>(context).whatsAppGroupLinks;

    final categoryWiseGroups = groupLinks
        .where(
          (element) => element.category.contains(
            data["whatsAppCategoryId"],
          ),
        )
        .toList();

    print(categoryWiseGroups.length,);

    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          data["whatsAppCategoryName"],
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(
          vertical: 15,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              ListView.builder(
                physics: ClampingScrollPhysics(),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemBuilder: (ctx, i) {
                  return Column(
                    children: <Widget>[
                      ListTile(
                        onTap: () {
                          print(
                            "Button Pressed",
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
                          categoryWiseGroups[i].groupName,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                        trailing: RaisedButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                              10,
                            ),
                          ),
                          onPressed: () async {
                            if (await canLaunch(categoryWiseGroups[i].groupLink)) {
                              await launch(
                                categoryWiseGroups[i].groupLink,
                              );
                            }
                            print(
                              "Button Pressed",
                            );
                          },
                          color: Colors.green,
                          child: Text(
                            "Join",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
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
                itemCount: categoryWiseGroups.length,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
