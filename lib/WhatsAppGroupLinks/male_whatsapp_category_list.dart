import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'male_whatsapp_category.dart';

class MaleWhatsAppCategoryList extends ChangeNotifier {
  List<MaleWhatsAppCategory> _categories = [
    MaleWhatsAppCategory(
      categoryName: "Cricket Groups",
      categoryId: "c1",
    ),
    MaleWhatsAppCategory(
      categoryName: "Islamic Groups",
      categoryId: "c2",
    ),
  ];

  List<MaleWhatsAppCategory> get categories {
    return [..._categories];
  }

  List<MaleWhatsAppCategory> _filterCategories = [];

  List<MaleWhatsAppCategory> get filterCategories {
    return [..._filterCategories];
  }

  List<MaleWhatsAppCategory> _categoriesList = [];

  List<MaleWhatsAppCategory> get categoriesList {
    return [..._categoriesList];
  }

  @override
  void notifyListeners() {
    // TODO: implement notifyListeners
    super.notifyListeners();
  }

}
