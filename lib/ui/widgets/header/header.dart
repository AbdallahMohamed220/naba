import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HeaderWidget extends StatelessWidget {
  String label;
  HeaderWidget({
    this.label,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15.0, bottom: 6),
      child: Text(
        label,
        textAlign: TextAlign.end,
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
