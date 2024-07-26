import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:new_project/Screens/geeta/view/geetaScreen.dart';
import 'package:provider/provider.dart';

import '../geeta/provider/geeta_provider.dart';
import 'geetaProvider.dart';

class Geeta extends StatelessWidget {
  const Geeta({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    LanguageProvider languageProvidertrue =
        Provider.of<LanguageProvider>(context, listen: true);
    GeetaProvider geetaProvider = Provider.of<GeetaProvider>(context);
    return Scaffold(
        backgroundColor: Color(0xfffdfdfd),
        appBar: AppBar(
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
        body: Center(
          child: SingleChildScrollView(
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
                Column(
                  children: List.generate(
                    geetaProvider.geetaList[number].Verses.length,
                    (index) => Container(
                      height: (index == 0) ? height * 0.530 : height * 0.450,
                      width: double.infinity,
                      margin:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.orange, width: 2)),
                      child: Column(
                        children: [
                          Spacer(),
                          (index == 0)
                              ? Text(
                                  'पहला अध्याय',
                                  style: TextStyle(
                                      color: Colors.blueGrey.shade700,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17),
                                )
                              : SizedBox(
                                  height: 0,
                                ),
                          (index == 0)
                              ? Text(adhyay,
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.blueGrey.shade800),
                                  textAlign: TextAlign.center)
                              : SizedBox(
                                  height: 0,
                                ),
                          Container(
                            height: height * 0.150,
                            width: width * 0.852,
                            margin: EdgeInsets.only(top: 15),
                            alignment: Alignment.center,
                            child: Text(
                              geetaProvider.geetaList[number].Verses[index].Text
                                  .Sanskrit,
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.blueGrey.shade800),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Container(
                            height: height * 0.150,
                            width: width * 0.852,
                            margin: EdgeInsets.only(top: 15),
                            alignment: Alignment.center,
                            child: Text(
                              (languageProvidertrue.selectedItem == 'Hindi')
                                  ? geetaProvider.geetaList[number]
                                      .Verses[index].Text.Hindi
                                  : (languageProvidertrue.selectedItem ==
                                          'Gujarati')
                                      ? geetaProvider.geetaList[number]
                                          .Verses[index].Text.Gujarati
                                      : (languageProvidertrue.selectedItem ==
                                              'English')
                                          ? geetaProvider.geetaList[number]
                                              .Verses[index].Text.English
                                          : geetaProvider.geetaList[number]
                                              .Verses[index].Text.Hindi,
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.blueGrey.shade800),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Spacer(),
                          Divider(
                            color: Colors.orange,
                            thickness: 2,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              TextButton(
                                  onPressed: () {
                                    Clipboard.setData(ClipboardData(
                                        text:
                                            '${geetaProvider.geetaList[number].Verses[index].Text.Sanskrit}\n\n${(languageProvidertrue.selectedItem == 'Hindi') ? geetaProvider.geetaList[number].Verses[index].Text.Hindi : (languageProvidertrue.selectedItem == 'Gujarati') ? geetaProvider.geetaList[number].Verses[index].Text.Gujarati : (languageProvidertrue.selectedItem == 'English') ? geetaProvider.geetaList[number].Verses[index].Text.English : geetaProvider.geetaList[number].Verses[index].Text.Hindi}'));
                                  },
                                  child: Text(
                                    'Copy',
                                    style: TextStyle(
                                        color: Colors.orange,
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold),
                                  )),
                              TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Share',
                                    style: TextStyle(
                                        color: Colors.orange,
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold),
                                  )),
                              TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Save',
                                    style: TextStyle(
                                        color: Colors.orange,
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold),
                                  )),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
