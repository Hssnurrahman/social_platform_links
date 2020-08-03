import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class WhatsAppCategory extends ChangeNotifier {
  final String categoryName;
  final String categoryId;

  WhatsAppCategory({
    this.categoryName,
    this.categoryId,
  });
}
