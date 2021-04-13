import 'package:flutter/material.dart';
import 'package:naba/theme/color.dart';
import 'package:naba/ui/screens/login/login.dart';
import 'package:naba/ui/screens/personal_account/personal_account.dart';
import 'package:naba/ui/widgets/app_drawer/app_drawer.dart';
import 'package:naba/ui/widgets/appbar/appbar.dart';

class PurchaseSuccessfullyScreen extends StatefulWidget {
  @override
  _PurchaseSuccessfullyScreenState createState() =>
      _PurchaseSuccessfullyScreenState();
}

class _PurchaseSuccessfullyScreenState
    extends State<PurchaseSuccessfullyScreen> {
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
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.check_circle_rounded,
                    size: 200,
                    color: AppColor.kPrimaryColor,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: Text(
                      'لقد تمت عملية الشراء بنجاح',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      'الذهاب الي حسابك الشخصي للتحميل',
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                  ),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (_) => PersonalAccountScreen()),
                        );
                      },
                      child: Text(
                        'الحساب الشخصي',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: AppColor.kPrimaryColor,
                        minimumSize: Size(
                          deviceWidth * 0.9,
                          40,
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
