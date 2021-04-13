import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:flutter_carousel_slider/carousel_slider_indicators.dart';
import 'package:flutter_carousel_slider/carousel_slider_transforms.dart';
import 'package:naba/theme/color.dart';
import 'package:naba/ui/screens/login/login.dart';
import 'package:naba/ui/widgets/app_drawer/app_drawer.dart';
import 'package:naba/ui/widgets/appbar/appbar.dart';

class BookDetails extends StatefulWidget {
  @override
  _BookDetailsState createState() => _BookDetailsState();
}

class _BookDetailsState extends State<BookDetails> {
  final List<String> sliderImages = [
    'assets/images/slider_img1.png',
    'assets/images/slider_img2.png',
    'assets/images/slider_img3.jpg',
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
                padding: EdgeInsets.only(
                  right: 15,
                ),
                children: [
                  Text(
                    'سلسلة الحاسب الآلي للمرحلة الابتدائية',
                    textAlign: TextAlign.end,
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    'سلسلة الاوائل',
                    textAlign: TextAlign.end,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: deviceHeight * 0.5,
                    width: deviceWidth,
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
                    height: 8,
                  ),
                  Text(
                    'سلسلة الحاسب الآلي للمرحلة الابتدائية .. خطوة نحو إعداد الطالب لمواكبة التطور التقني الرقمي الذي أصبح دعامة أساسية نحتاجها في أنشطة حياتنا اليومية مثل أجهزة الاتصالات ،والإنترنت ،والسيارات ،والحاسوب ،والتلفاز ،والمدرسة والجامعة والمستشفى وغيرها بطرق عصرية سهلة ومميزة تستهدف المرحلة العمرية من 7 سنوات إلى 11سنة',
                    textAlign: TextAlign.end,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 50,
                    width: 250,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '207',
                                style: TextStyle(fontSize: 22),
                              ),
                              Text(
                                'ريال سعودى',
                                style: TextStyle(fontSize: 13),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 5.0),
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Text(
                                'تحميل عينة من الكتاب',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                primary: Color(0xffD5D3D3),
                                minimumSize: Size(
                                  deviceWidth * 0.5,
                                  70,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 20,
                    ),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'اضافة للسلة',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: AppColor.kPrimaryColor,
                        minimumSize: Size(
                          deviceWidth * 0.5,
                          60,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
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
