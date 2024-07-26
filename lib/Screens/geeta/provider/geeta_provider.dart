import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:new_project/Screens/geeta/model/bhagavadgeeta_model.dart';

class GeetaProvider extends ChangeNotifier {
  List<BhagavadgeetaModel> geetaList = [];

  Future<void> jsonString() async {
    String json = await rootBundle.loadString('assets/json/geeta.json');

    List geeta = jsonDecode(json);

    geetaList = geeta
        .map(
          (e) => BhagavadgeetaModel.fromJson(
            (e),
          ),
        )
        .toList();
  }

  GeetaProvider() {
    jsonString();
  }
}
