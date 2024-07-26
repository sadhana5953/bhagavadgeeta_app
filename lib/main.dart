import 'package:flutter/material.dart';
import 'package:new_project/Screens/Geeta_Adhyay/geetaProvider.dart';
import 'package:new_project/Screens/Geeta_Adhyay/geetaScreen.dart';
import 'package:new_project/Screens/geeta/provider/geeta_provider.dart';
import 'package:new_project/Screens/geeta/view/geetaScreen.dart';
import 'package:new_project/Screens/homeScreen/homeScreen.dart';
import 'package:new_project/Screens/splashScreen/splashScreen.dart';
import 'package:provider/provider.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => GeetaProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => LanguageProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => Splashscreen(),
          '/geetascreen': (context) => Geetascreen(),
          '/geeta': (context) => Geeta(),
          '/homescreen': (context) => Homescreen(),
        },
      ),
    );
  }
}
