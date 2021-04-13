import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:naba/theme/color.dart';
import 'package:naba/ui/screens/login/login.dart';
import 'package:naba/ui/widgets/appbar/appbar.dart';

class LastTwoScreen extends StatefulWidget {
  @override
  _LastTwoScreenState createState() => _LastTwoScreenState();
}

class _LastTwoScreenState extends State<LastTwoScreen> {
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'ادخل الكود',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: Colors.grey[400])),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: Colors.grey[400])),
                  ),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'تأكيد',
                    style: TextStyle(
                      fontSize: 20,
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
          ],
        ),
      ),
    );
  }
}
