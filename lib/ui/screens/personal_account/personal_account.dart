import 'package:flutter/material.dart';
import 'package:naba/theme/color.dart';
import 'package:naba/ui/screens/login/login.dart';
import 'package:naba/ui/widgets/app_drawer/app_drawer.dart';
import 'package:naba/ui/widgets/appbar/appbar.dart';

class PersonalAccountScreen extends StatefulWidget {
  @override
  _PersonalAccountScreenState createState() => _PersonalAccountScreenState();
}

class _PersonalAccountScreenState extends State<PersonalAccountScreen> {
  final GlobalKey<ScaffoldState> _scaffoldkey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldkey,
      drawer: AppDrawer(),
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
              padding: const EdgeInsets.only(
                right: 15.0,
                bottom: 6,
                top: 15,
              ),
              child: Text(
                'اهلا بك يا احمد',
                textAlign: TextAlign.end,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 8.0,
                top: 8,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 5.0),
                    child: Text(
                      'مشترياتى',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Icon(Icons.shopping_cart),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Divider(
                color: AppColor.kPrimaryColor,
                thickness: 2,
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            'تحميل',
                            style: TextStyle(
                              fontSize: 15,
                              color: AppColor.kAccentColor,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: AppColor.kPrimaryColor,
                            minimumSize: Size(
                              deviceWidth * 0.3,
                              40,
                            ),
                          ),
                        ),
                        Text(
                          'كتاب نور المعلم',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Divider(
                      color: Colors.grey,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            'بانتظار تأكيد الدفع',
                            style: TextStyle(
                              fontSize: 15,
                              color: AppColor.kSecondryColor,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xffE8ECEC),
                            minimumSize: Size(
                              deviceWidth * 0.3,
                              40,
                            ),
                          ),
                        ),
                        Text(
                          'كتاب الحاسب الالي',
                          style: TextStyle(
                            color: AppColor.kSecondryColor,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Divider(
                      color: Colors.grey,
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
