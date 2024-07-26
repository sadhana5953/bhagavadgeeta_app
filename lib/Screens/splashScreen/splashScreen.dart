import 'package:flutter/material.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xfffdfdfd),
      body: Center(
        child: Image(
          image: AssetImage('assets/images/geeta.png'),
        ),
      ),
    );
  }
}
