import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:naba/theme/color.dart';
import 'package:naba/ui/screens/login/login.dart';
import 'package:naba/ui/widgets/appbar/appbar.dart';

class LastThreeScreen extends StatefulWidget {
  @override
  _LastThreeScreenState createState() => _LastThreeScreenState();
}

class _LastThreeScreenState extends State<LastThreeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldkey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            AppBarWidget(
              isHomescreen: false,
              onDrawerIconTap: () {
                _scaffoldkey.currentState.openDrawer();
              },
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'ابدء اختبار محاكي',
                    style: TextStyle(
                      fontSize: 17,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: AppColor.kPrimaryColor,
                    minimumSize: Size(
                      deviceWidth * 0.9,
                      60,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0, right: 15, bottom: 5),
              child: Text(
                'المهارات',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 20.0,
                        horizontal: 10,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 2,
                          color: Color(0xffDBDADA),
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Directionality(
                        textDirection: TextDirection.rtl,
                        child: Text(
                          'عمليات حسابية',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 20.0,
                        horizontal: 10,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 2,
                          color: Color(0xffDBDADA),
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Directionality(
                        textDirection: TextDirection.rtl,
                        child: Text(
                          'هندسة',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
