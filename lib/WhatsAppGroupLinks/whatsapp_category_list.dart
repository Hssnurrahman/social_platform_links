import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'whatsapp_category.dart';

class WhatsAppCategoryList extends ChangeNotifier {
  List<WhatsAppCategory> _categories = [
    WhatsAppCategory(
      categoryName: "Cricket Groups",
      categoryId: "c1",
    ),
    WhatsAppCategory(
      categoryName: "Islamic Groups",
      categoryId: "c2",
    ),
  ];

  List<WhatsAppCategory> get categories {
    return [..._categories];
  }

  @override
  void notifyListeners() {
    // TODO: implement notifyListeners
    super.notifyListeners();
  }

}
