import 'dart:math';

import 'package:flutter/cupertino.dart';

class BhagavadgeetaModel {
  late int chapter;
  late Chaptername ChapterName;
  List<Verse> Verses = [];

  BhagavadgeetaModel(
      {required this.chapter, required this.ChapterName, required this.Verses});

  factory BhagavadgeetaModel.fromJson(Map m1) {
    return BhagavadgeetaModel(
        chapter: m1['Chapter'],
        ChapterName: Chaptername.fromJson(m1['ChapterName']),
        Verses: (m1['Verses'] as List).map((e) => Verse.fromJson(e)).toList());
  }
}

class Chaptername {
  late String Hindi, English, Gujarati, Sanskrit;

  Chaptername(
      {required this.Hindi,
      required this.English,
      required this.Gujarati,
      required this.Sanskrit});

  factory Chaptername.fromJson(Map m1) {
    return Chaptername(
        Hindi: m1['Hindi'],
        English: m1['English'],
        Gujarati: m1['Gujarati'],
        Sanskrit: m1['Sanskrit']);
  }
}

class Verse {
  late int VerseNumber;
  late Sholk Text;

  Verse({required this.VerseNumber, required this.Text});

  factory Verse.fromJson(Map m1) {
    return Verse(
        VerseNumber: m1['VerseNumber'], Text: Sholk.fromjson(m1['Text']));
  }
}

class Sholk {
  late String Hindi, English, Gujarati, Sanskrit;

  Sholk(
      {required this.Hindi,
      required this.English,
      required this.Gujarati,
      required this.Sanskrit});

  factory Sholk.fromjson(Map m1) {
    return Sholk(
        Hindi: m1['Hindi'],
        English: m1['English'],
        Gujarati: m1['Gujarati'],
        Sanskrit: m1['Sanskrit']);
  }
}
