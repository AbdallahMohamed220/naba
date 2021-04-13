import 'package:flutter/material.dart';
import 'package:naba/theme/color.dart';
import 'package:naba/ui/screens/login/login.dart';

// ignore: must_be_immutable
class ButtonActiion extends StatelessWidget {
  VoidCallback onPressed;
  String label;
  double butttonWidth;
  double buttonHeight;
  ButtonActiion({
    this.onPressed,
    this.label,
    this.butttonWidth,
    this.buttonHeight,
  });
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          label,
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        style: ElevatedButton.styleFrom(
          primary: AppColor.kPrimaryColor,
          minimumSize: Size(
            butttonWidth,
            buttonHeight,
          ),
        ),
      ),
    );
  }
}
