import 'package:flutter/material.dart';
import 'package:rehnuma/constants.dart';
import 'package:rehnuma/home_screen_widgets/search_bar.dart';
import 'package:rehnuma/navigation%20screens/dua_screen.dart';
import 'package:rehnuma/navigation%20screens/qassas_screen.dart';
import 'package:rehnuma/navigation%20screens/zikar_screen.dart';
import 'package:rehnuma/screens/home_screen.dart';

import '../navigation screens/therapy_screen.dart';

class MoreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 27.0,
          ),
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HomeScreen(),
            ),
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(bgImage2),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 15.0),
                child: Text(
                  'More',
                  style: kQuestionTextStyle,
                ),
              ),
              Column(
                children: [
                  IntrinsicHeight(
                    child: Row(
                      children: [
                        Expanded(
                          child: ImagewithLabel(
                            assetName: 'assets/images/Dua2.png',
                            title: 'Dua',
                            newScreen: DuaScreen(),
                          ),
                        ),
                        VerticalDivider(
                          color: Colors.grey,
                          thickness: 1.0,
                          indent: 20.0,
                        ),
                        Expanded(
                          child: ImagewithLabel(
                            assetName: 'assets/images/zikr.png',
                            title: 'Zikr',
                            newScreen: ZikarScreen(),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    indent: 20.0,
                    endIndent: 20.0,
                    color: Colors.grey,
                    thickness: 1.0,
                  ),
                  IntrinsicHeight(
                    child: Row(
                      children: [
                        Expanded(
                          child: ImagewithLabel(
                            assetName: 'assets/images/qassas-ul-anbiya.png',
                            title: 'Qassas-ul-Anbiya',
                            newScreen: QassasScreen(),
                          ),
                        ),
                        VerticalDivider(
                          endIndent: 20.0,
                          color: Colors.grey,
                          thickness: 1.0,
                        ),
                        Expanded(
                          child: ImagewithLabel(
                            assetName: 'assets/images/therapies.png',
                            title: 'Therapies',
                            newScreen: TherapyScreen(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ImagewithLabel extends StatelessWidget {
  const ImagewithLabel(
      {Key? key,
      required this.assetName,
      required this.title,
      required this.newScreen})
      : super(key: key);
  final String assetName;
  final String title;
  final Widget newScreen;

  @override
  Widget build(BuildContext context) {
    var currentWidth = MediaQuery.of(context).size.width;
    var currentHeight = MediaQuery.of(context).size.height;
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => newScreen),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Container(
              height: currentHeight * 0.2,
              child: Image.asset(
                assetName,
                fit: BoxFit.fill,
                width: currentWidth * .5,
              ),
            ),
            Text(
              title,
              textAlign: TextAlign.center,
              style: kQuestionDescStyle,
            ),
          ],
        ),
      ),
    );
  }
}
