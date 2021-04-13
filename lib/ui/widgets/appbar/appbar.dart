import 'package:flutter/material.dart';

import 'package:naba/theme/color.dart';
import 'package:naba/ui/screens/login/login.dart';

// ignore: must_be_immutable
class AppBarWidget extends StatelessWidget {
  VoidCallback onDrawerIconTap;
  VoidCallback onCartIconTap;
  VoidCallback onAccountIconTap;
  bool isHomescreen;
  AppBarWidget(
      {this.onDrawerIconTap,
      this.onCartIconTap,
      this.onAccountIconTap,
      this.isHomescreen});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      width: deviceWidth,
      child: Stack(
        children: [
          Material(
            elevation: 2,
            child: Container(
              width: deviceWidth,
              height: 70,
              color: Color(0xff0B7D6E),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Icon(Icons.menu),
                    color: AppColor.kAccentColor,
                    onPressed: onDrawerIconTap,
                  ),
                  isHomescreen
                      ? IconButton(
                          color: AppColor.kAccentColor,
                          icon: Icon(Icons.shopping_cart_rounded),
                          onPressed: onCartIconTap,
                        )
                      : IconButton(
                          color: AppColor.kAccentColor,
                          icon: Icon(Icons.close),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                  isHomescreen
                      ? IconButton(
                          color: AppColor.kAccentColor,
                          icon: Icon(Icons.person),
                          onPressed: onAccountIconTap,
                        )
                      : SizedBox(
                          width: 5,
                        ),
                ],
              ),
            ),
          ),
          Positioned(
            right: 5,
            top: 0,
            child: Container(
              width: 110,
              height: 110,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Color(0xffB8B8B8),
                    blurRadius: 0.6,
                  ),
                ],
              ),
              child: Image.asset(
                'assets/images/logo.png',
                height: 110.0,
                width: 120.0,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
