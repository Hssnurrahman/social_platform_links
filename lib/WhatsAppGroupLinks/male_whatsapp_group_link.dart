import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MaleWhatsAppGroupLink extends ChangeNotifier {
  final String groupName;
  final String groupLink;
  final String category;

  MaleWhatsAppGroupLink({
    this.groupName,
    this.groupLink,
    this.category,
  });
}