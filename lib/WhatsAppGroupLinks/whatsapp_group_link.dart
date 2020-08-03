import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class WhatsAppGroupLink extends ChangeNotifier {
  final String groupName;
  final String groupLink;
  final String category;

  WhatsAppGroupLink({
    this.groupName,
    this.groupLink,
    this.category,
  });
}