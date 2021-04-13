import 'package:flutter/material.dart';
import 'package:naba/theme/color.dart';
import 'package:naba/ui/screens/login/login.dart';
import 'package:naba/ui/screens/payment_methods/payment_methods.dart';
import 'package:naba/ui/widgets/appbar/appbar.dart';
import 'package:naba/ui/widgets/button_action/button_action.dart';

class AvailableDriveAddress extends StatefulWidget {
  @override
  _AvailableDriveAddressState createState() => _AvailableDriveAddressState();
}

class _AvailableDriveAddressState extends State<AvailableDriveAddress> {
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
            Padding(
              padding: const EdgeInsets.only(right: 15.0, bottom: 6),
              child: Text(
                'عناوين التوصيل المتاحة',
                textAlign: TextAlign.end,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      padding: const EdgeInsets.all(8.0),
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
                                  Text('المدينة : الرياض'),
                                  Text('اسم الشارع : ابو القاسم'),
                                  Text(' 1254 : رقم المبني'),
                                  Text(' 12 : رقم الطابق'),
                                  Text(' 25 : رقم الشقة'),
                                  Text(' 0112543687 : رقم الهاتف'),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  IconButton(
                                    icon: Icon(
                                      _checkIcon,
                                      size: 30,
                                      color: _checkColor,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        _checkColor = Color(0xff2CCAB5);
                                        _checkIcon = Icons.check_circle_rounded;
                                      });
                                    },
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  InkWell(
                                    onTap: () {},
                                    child: Text(
                                      'حذف العنوان',
                                      style: TextStyle(color: Colors.red),
                                    ),
                                  ),
                                ],
                              ),
                            )
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
                          Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (_) => PaymentMethodsScreen()),
                          );
                        },
                        label: 'التالى',
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
