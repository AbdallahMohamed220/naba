import 'package:flutter/material.dart';
import 'package:naba/theme/color.dart';
import 'package:naba/ui/screens/login/login.dart';
import 'package:naba/ui/screens/prepare/prepare.dart';
import 'package:naba/ui/widgets/app_drawer/app_drawer.dart';
import 'package:naba/ui/widgets/appbar/appbar.dart';

class SectionsScreen extends StatefulWidget {
  @override
  _SectionsScreenState createState() => _SectionsScreenState();
}

class _SectionsScreenState extends State<SectionsScreen> {
  final GlobalKey<ScaffoldState> _scaffoldkey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      body: SafeArea(
        child: Column(
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
            Expanded(
              child: ListView(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      right: 15,
                    ),
                    child: Text(
                      'الاقسام',
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        fontSize: 22,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  SectionItem(
                    label: 'تحضير',
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => PrepareScreen()),
                      );
                    },
                  ),
                  SectionItem(
                    label: 'بوربوينت',
                  ),
                  SectionItem(
                    label: 'أوراق عمل',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class SectionItem extends StatelessWidget {
  SectionItem({this.label, this.onTap});
  String label;
  VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      height: 70,
      width: deviceWidth,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.grey[100],
          blurRadius: 6,
          offset: Offset(1, 3),
        )
      ]),
      child: InkWell(
        onTap: onTap,
        child: Card(
          elevation: 0.5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: Padding(
              padding: const EdgeInsets.only(top: 15.0, right: 10),
              child: Text(
                label,
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: Color(0xff0B7D6E),
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
