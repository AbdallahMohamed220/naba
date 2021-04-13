import 'package:flutter/material.dart';
import 'package:naba/theme/color.dart';
import 'package:naba/ui/screens/login/login.dart';
import 'package:naba/ui/widgets/appbar/appbar.dart';
import 'package:naba/ui/widgets/button_action/button_action.dart';
import 'package:naba/ui/widgets/header/header.dart';

class BankAccountScreen extends StatefulWidget {
  @override
  _BankAccountScreenState createState() => _BankAccountScreenState();
}

class _BankAccountScreenState extends State<BankAccountScreen> {
  final GlobalKey<ScaffoldState> _scaffoldkey = new GlobalKey<ScaffoldState>();

  Color _checkColor = Color(0xffCBBCBC);
  IconData _checkIcon = Icons.check_circle_outline;

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
            SizedBox(
              height: 15,
            ),
            HeaderWidget(
              label: 'الحساب البنكي',
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 8.0,
                right: 8,
                bottom: 15,
              ),
              child: Text(
                'الاجمالى 500 ريال سعودى',
                textAlign: TextAlign.end,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 25.0,
                        horizontal: 10,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Color(0xffEAD9D9)),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Directionality(
                        textDirection: TextDirection.rtl,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'اسم صاحب الحساب \n محمد على حسين',
                                  ),
                                  Text('رقم الحساب : 123456'),
                                  Text('بنك الراجحي'),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Image.asset(
                                'assets/images/bank.png',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Center(
                      child: ButtonActiion(
                        onPressed: () {
                          // Navigator.of(context).push(
                          //   MaterialPageRoute(
                          //       builder: (_) => PaymentMethodsScreen()),
                          // );
                        },
                        label: 'تأكيد',
                        butttonWidth: deviceWidth * 0.9,
                        buttonHeight: 50,
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
