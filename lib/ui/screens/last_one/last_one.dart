import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:naba/theme/color.dart';
import 'package:naba/ui/screens/login/login.dart';
import 'package:naba/ui/screens/payment_methods/payment_methods.dart';
import 'package:naba/ui/widgets/appbar/appbar.dart';

class LastOneScreen extends StatefulWidget {
  @override
  _LastOneScreenState createState() => _LastOneScreenState();
}

class _LastOneScreenState extends State<LastOneScreen> {
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
                          'القدرات - كمي',
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
                          'القدرات - كمي',
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
