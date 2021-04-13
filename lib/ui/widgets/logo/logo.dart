import 'package:flutter/material.dart';

class LogoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 200,
        height: 200,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(100),
          boxShadow: [
            BoxShadow(
              color: Color(0xffB8B8B8),
              blurRadius: 0.6,
            ),
          ],
        ),
        child: Image.asset(
          'assets/images/logo.png',
          height: 150.0,
          width: 150.0,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
