import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:flutter_carousel_slider/carousel_slider_indicators.dart';
import 'package:flutter_carousel_slider/carousel_slider_transforms.dart';
import 'package:naba/theme/color.dart';
import 'package:naba/ui/screens/cart/cart.dart';
import 'package:naba/ui/screens/login/login.dart';
import 'package:naba/ui/screens/personal_account/personal_account.dart';
import 'package:naba/ui/widgets/app_drawer/app_drawer.dart';
import 'package:naba/ui/widgets/appbar/appbar.dart';

class MainMenuScreen extends StatefulWidget {
  @override
  _MainMenuScreenState createState() => _MainMenuScreenState();
}

class _MainMenuScreenState extends State<MainMenuScreen> {
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
    return Scaffold(
      key: _scaffoldkey,
      drawer: AppDrawer(),
      body: Container(
        width: deviceWidth,
        height: deviceHeight,
        child: SafeArea(
          child: Stack(
            children: [
              Column(
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
                  Expanded(
                    child: ListView(
                      children: [
                        Container(
                          height: deviceHeight * 0.3,
                          child: CarouselSlider.builder(
                            unlimitedMode: true,
                            controller: _sliderController,
                            slideBuilder: (index) {
                              return Image.asset(
                                sliderImages[index],
                              );
                            },
                            slideTransform: DefaultTransform(),
                            slideIndicator: CircularSlideIndicator(
                              indicatorBorderWidth: 0.5,
                              indicatorRadius: 6,
                              indicatorBorderColor: Colors.grey,
                              alignment: Alignment.bottomCenter,
                              currentIndicatorColor: Colors.greenAccent[400],
                            ),
                            itemCount: sliderImages.length,
                            initialPage: 0,
                            enableAutoSlider: true,
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(right: 15.0, bottom: 6),
                          child: Text(
                            'المنتجات',
                            textAlign: TextAlign.end,
                            style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Container(
                          height: deviceHeight * 0.7,
                          child: GridView.builder(
                              physics: ScrollPhysics(),
                              itemCount: 6,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                mainAxisSpacing: 10,
                                childAspectRatio: 0.48,
                              ),
                              itemBuilder: (_, i) => Container(
                                    height: 350,
                                    width: 250,
                                    child: Stack(
                                      children: [
                                        Card(
                                          color: AppColor.kAccentColor,
                                          elevation: 3,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Center(
                                                child: Image.asset(
                                                  'assets/images/slider_img1.png',
                                                  width: 130,
                                                  height: 140,
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 5.0),
                                                child: Text(
                                                  'سلسلة الحاسب الالى للمرحلة الابتدائية',
                                                  textAlign: TextAlign.end,
                                                  style: TextStyle(
                                                    fontSize: 18,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 5.0),
                                                child: Text(
                                                  'خطوة نحو إعداد الطالب لمواكبة التطور التقنى الرقمى',
                                                  textAlign: TextAlign.end,
                                                  style: TextStyle(
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                height: 50,
                                                width: 250,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.end,
                                                  children: [
                                                    Container(
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .end,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text(
                                                            '207',
                                                            style: TextStyle(
                                                                fontSize: 20),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .only(
                                                              left: 5.0,
                                                              bottom: 5,
                                                            ),
                                                            child: Text(
                                                              'ريال سعودى',
                                                              style: TextStyle(
                                                                  fontSize: 13),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Container(
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                right: 5.0,
                                                                bottom: 5),
                                                        child: Text(
                                                          'المرحلة الابتدائية',
                                                          style: TextStyle(
                                                            color: Colors.grey,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                height: 35,
                                                width: 250,
                                                decoration: BoxDecoration(
                                                  color: AppColor.kPrimaryColor,
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(8),
                                                    bottomRight:
                                                        Radius.circular(8),
                                                  ),
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    'اضافة للسلة',
                                                    style: TextStyle(
                                                      color:
                                                          AppColor.kAccentColor,
                                                      fontSize: 16,
                                                    ),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Positioned(
                                          top: 0,
                                          left: 0,
                                          child: Container(
                                            width: 50,
                                            height: 50,
                                            decoration: BoxDecoration(
                                                color: Colors.red,
                                                borderRadius:
                                                    BorderRadius.circular(50)),
                                            child: Center(
                                              child: Text(
                                                '20%',
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold,
                                                  color: AppColor.kAccentColor,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                width: deviceWidth,
                height: deviceHeight,
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.75),
                  backgroundBlendMode: BlendMode.color,
                ),
                child: ListView(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Text(
                        'القائمة الرئسية',
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          fontSize: 22,
                          color: AppColor.kAccentColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0, bottom: 15),
                      child: Container(
                        alignment: Alignment.topRight,
                        child: Image.asset(
                          'assets/images/center.png',
                          width: deviceWidth * 0.5,
                          height: 50,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (_) => MainMenuScreen()),
                            );
                          },
                          child: Text(
                            'القدرات',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: AppColor.kPrimaryColor,
                            minimumSize: Size(
                              deviceWidth * 0.5,
                              50,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (_) => MainMenuScreen()),
                            );
                          },
                          child: Text(
                            'التحصيلي',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: AppColor.kPrimaryColor,
                            minimumSize: Size(
                              deviceWidth * 0.5,
                              50,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Divider(
                      color: AppColor.kAccentColor,
                      thickness: 1,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        'assets/images/nor_student.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Text(
                        'نور الطالب و الطالبة',
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          fontSize: 22,
                          color: AppColor.kAccentColor,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        'assets/images/nor_teacher.png',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Text(
                        'نور المعلم و المعلمة',
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          fontSize: 22,
                          color: AppColor.kAccentColor,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 60,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
