import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:flutter_carousel_slider/carousel_slider_indicators.dart';
import 'package:flutter_carousel_slider/carousel_slider_transforms.dart';
import 'package:naba/ui/screens/login/login.dart';

class CarouselSliderWidget extends StatelessWidget {
  const CarouselSliderWidget({
    Key key,
    @required CarouselSliderController sliderController,
    @required this.sliderImages,
  })  : _sliderController = sliderController,
        super(key: key);

  final CarouselSliderController _sliderController;
  final List<String> sliderImages;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
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
    );
  }
}
