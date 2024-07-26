import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xfffdfdfd),
      appBar: AppBar(
        backgroundColor: Color(0xfffdd640),
        title: Text(
          'श्रीमद भगवत गीता',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: height * 0.100,
            ),
            Container(
              height: height * 0.100,
              width: width * 0.750,
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Color(0xfffdfdfd),
                image: DecorationImage(
                    image: AssetImage('assets/images/geeta.png'),
                    fit: BoxFit.cover),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed('/geetascreen');
              },
              child: buildContainer(
                  height, width, 'assets/images/image1.png', 'भगवद गीता'),
            ),
            buildContainer(
                height, width, 'assets/images/image2.png', 'गीता सार'),
            buildContainer(
                height, width, 'assets/images/image3.png', 'गीता महात्म्य'),
            buildContainer(
                height, width, 'assets/images/image4.png', 'गीता आरती'),
          ],
        ),
      ),
    );
  }

  Container buildContainer(
      double height, double width, String image, String name) {
    return Container(
      height: height * 0.100,
      width: width * 0.800,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.orange, width: 2)),
      child: Row(
        children: [
          Image(
            image: AssetImage(image),
            height: 100,
            width: 100,
          ),
          //SizedBox(width: width*0.030,),
          Text(
            name,
            style: TextStyle(
                color: Colors.black, fontSize: 22, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
