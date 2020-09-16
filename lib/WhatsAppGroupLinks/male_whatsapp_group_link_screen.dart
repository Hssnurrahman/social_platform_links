import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:share/share.dart';

import 'male_whatsapp_group_link_list.dart';

class MaleWhatsAppGroupLinkScreen extends StatefulWidget {
  static const routeName = "/whatsapp-group-link-screen";

  @override
  _MaleWhatsAppGroupLinkScreenState createState() =>
      _MaleWhatsAppGroupLinkScreenState();
}

class _MaleWhatsAppGroupLinkScreenState extends State<MaleWhatsAppGroupLinkScreen> {
  Map data = {};

  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context).settings.arguments;

    print(
      data,
    );

    final groupLinks =
        Provider.of<MaleWhatsAppGroupLinkList>(context).whatsAppGroupLinks;

    final categoryWiseGroups = groupLinks
        .where(
          (element) => element.category.contains(
            data["whatsAppCategoryId"],
          ),
        )
        .toList();

    print(
      categoryWiseGroups.length,
    );

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
                        trailing: Container(
                          width: 137,
                          child: Row(
                            children: <Widget>[
                              RaisedButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                    10,
                                  ),
                                ),
                                onPressed: () async {
                                  if (await canLaunch(
                                      categoryWiseGroups[i].groupLink)) {
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
                              IconButton(
                                icon: Icon(
                                  Icons.share,
                                  color: Colors.green,
                                ),
                                onPressed: () {

                                  final String text = "${groupLinks[i].groupName} - ${groupLinks[i].groupLink}";

                                  Share.share(
                                    text,
                                    subject: "${groupLinks[i].groupLink}",
                                  );
                                }
                              )
                            ],
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
