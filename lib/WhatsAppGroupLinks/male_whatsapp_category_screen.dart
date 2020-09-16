import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'male_whatsapp_category.dart';

import 'male_whatsapp_category_list.dart';
import 'male_whatsapp_group_link_screen.dart';
import 'male_whatsapp_group_link_list.dart';

class MaleWhatsAppCategoryScreen extends StatefulWidget {
  static const routeName = "/whatsapp-category-screen";

  @override
  _MaleWhatsAppCategoryScreenState createState() =>
      _MaleWhatsAppCategoryScreenState();
}

class _MaleWhatsAppCategoryScreenState
    extends State<MaleWhatsAppCategoryScreen> {
  bool isSearching = false;
  TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    List<MaleWhatsAppCategory> categories =
        Provider.of<MaleWhatsAppCategoryList>(
      context,
      listen: false,
    ).categories;

    List<MaleWhatsAppCategory> filteredCategories =
        Provider.of<MaleWhatsAppCategoryList>(
      context,
      listen: false,
    ).filterCategories;

    print(
      categories,
    );

    filteredCategories.addAll(
      categories,
    );

    print(
      filteredCategories,
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<MaleWhatsAppCategory> categories =
        Provider.of<MaleWhatsAppCategoryList>(
      context,
      listen: false,
    ).categories;

    List<MaleWhatsAppCategory> filteredCategories =
        Provider.of<MaleWhatsAppCategoryList>(
      context,
      listen: false,
    ).filterCategories;

    filteredCategories.addAll(
      categories,
    );

    print(
      "Categories List Length: ${categories.length}",
    );

    void filterCategories( String i) {
      List<MaleWhatsAppCategory> categories =
          Provider.of<MaleWhatsAppCategoryList>(
        context,
        listen: false,
      ).categories;

      List<MaleWhatsAppCategory> filteredCategories =
          Provider.of<MaleWhatsAppCategoryList>(
        context,
        listen: false,
      ).filterCategories;

      filteredCategories.addAll(
        categories,
      );

      print(
        "Filter Categories List: ${filteredCategories.length}",
      );



      int index = int.parse(
        i,
      );

      setState(() {
        filteredCategories = categories
            .where(
              (category) =>
                  (categories[index].categoryName).toLowerCase().contains(
                        _searchController.text.toLowerCase(),
                      ),
            )
            .toList();
      });

      print(
        "Text Field Is Not Empty. ",
      );
    }

    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: !isSearching
            ? Text(
                "WhatsApp Groups",
              )
            : TextField(
          controller: _searchController,
//                onChanged: (String search, String i) {
//                  return filterCategories(
//                    search,
//                    i,
//                  );
//                },
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
      body: Container(
        margin: EdgeInsets.only(
          top: 15,
        ),
        child: filteredCategories.length > 0
            ? Column(
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
                          Provider.of<MaleWhatsAppGroupLinkList>(context)
                              .whatsAppGroupLinks;

                      final categoryWiseGroups = groupLinks
                          .where(
                            (element) => element.category.contains(
                              category,
                            ),
                          )
                          .toList();

                      print(
                        categoryWiseGroups.length,
                      );

                      return Column(
                        children: <Widget>[
                          ListTile(
                            onTap: () {
                              Navigator.of(context).pushNamed(
                                  MaleWhatsAppGroupLinkScreen.routeName,
                                  arguments: {
                                    "whatsAppCategoryName":
                                        filteredCategories[i].categoryName,
                                    "whatsAppCategoryId":
                                        filteredCategories[i].categoryId,
                                  });
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
                              filteredCategories[i].categoryName,
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
                    itemCount: filteredCategories.length,
                  ),
                ],
              )
            : Container(),
      ),
    );
  }
}
