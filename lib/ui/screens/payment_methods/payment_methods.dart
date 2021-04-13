import 'package:flutter/material.dart';
import 'package:naba/theme/color.dart';
import 'package:naba/ui/screens/bank_account/bank_account.dart';
import 'package:naba/ui/screens/credit_card/credit_card.dart';
import 'package:naba/ui/screens/login/login.dart';
import 'package:naba/ui/widgets/appbar/appbar.dart';
import 'package:naba/ui/widgets/button_action/button_action.dart';
import 'package:naba/ui/widgets/header/header.dart';

class PaymentMethodsScreen extends StatefulWidget {
  @override
  _PaymentMethodsScreenState createState() => _PaymentMethodsScreenState();
}

class _PaymentMethodsScreenState extends State<PaymentMethodsScreen> {
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
              label: 'طرق الدفع',
            ),
            SizedBox(
              height: 10,
            ),
            PaymentChoice(
              label: 'بطاقة ائتمانية',
              checkIcon: _checkIcon,
              checkColor: _checkColor,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Divider(
                thickness: 1,
                color: Colors.grey[200],
              ),
            ),
            PaymentChoice(
              label: 'تحويل بنكي',
              checkIcon: _checkIcon,
              checkColor: _checkColor,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Divider(
                thickness: 1,
                color: Colors.grey[200],
              ),
            ),
            ButtonActiion(
              label: 'تأكيد',
              buttonHeight: 50,
              butttonWidth: deviceWidth * 0.8,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class PaymentChoice extends StatefulWidget {
  PaymentChoice({this.checkIcon, this.checkColor, this.label});

  IconData checkIcon;
  Color checkColor;
  String label;

  @override
  _PaymentChoiceState createState() => _PaymentChoiceState();
}

class _PaymentChoiceState extends State<PaymentChoice> {
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => CreditCardScreen()),
                );
              },
              child: Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: Text(
                  widget.label,
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5.0),
              child: IconButton(
                icon: Icon(
                  widget.checkIcon,
                  size: 30,
                  color: widget.checkColor,
                ),
                onPressed: () {
                  setState(() {
                    widget.checkColor = Color(0xff2CCAB5);
                    widget.checkIcon = Icons.check_circle_rounded;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
