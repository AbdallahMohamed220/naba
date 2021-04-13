import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:naba/ui/screens/cart/cart.dart';
import 'package:naba/ui/screens/home/components/books_item.dart';
import 'package:naba/ui/screens/home/components/carousel_widget.dart';
import 'package:naba/ui/screens/login/login.dart';
import 'package:naba/ui/screens/personal_account/personal_account.dart';
import 'package:naba/ui/widgets/app_drawer/app_drawer.dart';
import 'package:naba/ui/widgets/appbar/appbar.dart';
import 'package:naba/ui/widgets/header/header.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> sliderImages = [
    'assets/images/slider_img2.png',
    'assets/images/slider_img2.png',
    'assets/images/slider_img2.png',
  ];

  CarouselSliderController _sliderController;
  final GlobalKey<ScaffoldState> _scaffoldkey = new GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _sliderController = CarouselSliderController();
  }

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
              isHomescreen: true,
              onDrawerIconTap: () {
                _scaffoldkey.currentState.openDrawer();
              },
              onCartIconTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => CartScreen(),
                  ),
                );
              },
              onAccountIconTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => PersonalAccountScreen(),
                  ),
                );
              },
            ),
            CarouselSliderWidget(
              sliderController: _sliderController,
              sliderImages: sliderImages,
            ),
            SizedBox(
              height: 15,
            ),
            HeaderWidget(
              label: 'المنتجات',
            ),
            Expanded(
              flex: 2,
              child: GridView.builder(
                physics: ScrollPhysics(),
                itemCount: 6,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 8,
                  childAspectRatio: _aspec,
                ),
                itemBuilder: (_, i) => BooksItem(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
