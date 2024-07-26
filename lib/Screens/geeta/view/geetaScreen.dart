import 'package:flutter/material.dart';
import 'package:new_project/Screens/Geeta_Adhyay/geetaProvider.dart';
import 'package:new_project/Screens/geeta/provider/geeta_provider.dart';
import 'package:provider/provider.dart';

class Geetascreen extends StatelessWidget {
  const Geetascreen({super.key});

  @override
  Widget build(BuildContext context) {
    int changeImage(int value) {
      if (value >= 4) {
        value = 0;
        return value;
      } else {
        return value;
      }
    }

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    LanguageProvider languageProviderfalse =
        Provider.of<LanguageProvider>(context, listen: false);
    LanguageProvider languageProvidertrue =
        Provider.of<LanguageProvider>(context, listen: true);
    GeetaProvider geetaProvider = Provider.of<GeetaProvider>(context);
    return Scaffold(
      backgroundColor: Color(0xfffdfdfd),
      appBar: AppBar(
        actions: [
          PopupMenuButton<String>(
            color: Colors.white,
            icon: Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
            onSelected: languageProviderfalse.selectMenuItem,
            itemBuilder: (BuildContext context) {
              return languageProvidertrue.dropdownItems.map((String choice) {
                return PopupMenuItem<String>(
                  value: choice,
                  child: Text(
                    choice,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                );
              }).toList();
            },
          ),
        ],
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        backgroundColor: Color(0xfffdd640),
        title: Text(
          'श्रीमद भगवत गीता',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: height * 0.050),
              Container(
                height: height * 0.100,
                width: width * 0.700,
                margin: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Color(0xfffdfdfd),
                  image: DecorationImage(
                      image: AssetImage('assets/images/geeta.png'),
                      fit: BoxFit.cover),
                ),
              ),
              SizedBox(height: height * 0.030),
              Column(
                children: List.generate(
                  geetaProvider.geetaList.length,
                  (index) => GestureDetector(
                    onTap: () {
                      number = index;
                      adhyay = geetaProvider.geetaList[index].ChapterName.Hindi;
                      Navigator.of(context).pushNamed('/geeta');
                    },
                    child: Container(
                      height: height * 0.100,
                      width: width * 0.800,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.orange, width: 2)),
                      child: Row(
                        children: [
                          Image(
                            image: AssetImage(listOfImages[changeImage(index)]),
                            height: height * 0.080,
                            width: width * 0.150,
                          ),
                          SizedBox(
                            width: width * 0.020,
                          ),
                          Container(
                            height: height * 0.045,
                            width: width * 0.490,
                            child: Text(
                              (languageProvidertrue.selectedItem == 'Hindi')
                                  ? geetaProvider
                                      .geetaList[index].ChapterName.Hindi
                                  : (languageProvidertrue.selectedItem ==
                                          'Gujarati')
                                      ? geetaProvider
                                          .geetaList[index].ChapterName.Gujarati
                                      : (languageProvidertrue.selectedItem ==
                                              'English')
                                          ? geetaProvider.geetaList[index]
                                              .ChapterName.English
                                          : geetaProvider.geetaList[index]
                                              .ChapterName.Hindi,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 22,
                                fontWeight: FontWeight.w500,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

List listOfImages = [
  'assets/images/image1.png',
  'assets/images/image2.png',
  'assets/images/image3.png',
  'assets/images/image4.png',
];
String adhyay = '';
int number = 0;
String language = 'Gujrati';
