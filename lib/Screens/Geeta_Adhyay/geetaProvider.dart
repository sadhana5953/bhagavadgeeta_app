import 'package:flutter/material.dart';

class LanguageProvider extends ChangeNotifier {
  String? selectedItem;
  final List<String> dropdownItems = ['Hindi', 'Gujarati', 'English'];

  Future<String?> selectMenuItem(String value) async {
    selectedItem = value;
    notifyListeners();
  }
}
