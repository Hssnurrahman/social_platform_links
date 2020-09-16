import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MaleWhatsAppCategory extends ChangeNotifier {
  final String categoryName;
  final String categoryId;

  MaleWhatsAppCategory({
    this.categoryName,
    this.categoryId,
  });
}
