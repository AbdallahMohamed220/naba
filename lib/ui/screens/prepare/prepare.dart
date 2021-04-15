import 'package:flutter/material.dart';
import 'package:naba/ui/screens/home/components/books_item.dart';
import 'package:naba/ui/screens/login/login.dart';
import 'package:naba/ui/widgets/app_drawer/app_drawer.dart';
import 'package:naba/ui/widgets/appbar/appbar.dart';
import 'package:naba/ui/widgets/header/header.dart';

class PrepareScreen extends StatefulWidget {
  @override
  _PrepareScreenState createState() => _PrepareScreenState();
}

class _PrepareScreenState extends State<PrepareScreen> {
  final GlobalKey<ScaffoldState> _scaffoldkey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    var itemWidth = (deviceWidth / ((2 - 1) * 8)) / 2;
    var _aspec = itemWidth / 50;
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
            SizedBox(
              height: 15,
            ),
            HeaderWidget(label: 'بوربوينت بصوت'),
            Expanded(
              child: GridView.builder(
                itemCount: 6,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 8,
                  childAspectRatio: _aspec,
                ),
                itemBuilder: (_, i) => BooksItem(),
              ),
            ),
            SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
