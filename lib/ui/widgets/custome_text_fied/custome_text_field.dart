import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomeTextField extends StatelessWidget {
  String hintTxt;

  TextEditingController controller;
  dynamic validator;
  bool obscureTextbool;

  CustomeTextField(
      {this.hintTxt,
      this.controller,
      this.validator,
      this.obscureTextbool = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      child: TextFormField(
        textAlign: TextAlign.end,
        obscureText: obscureTextbool,
        validator: validator,
        controller: controller,
        decoration: new InputDecoration(
          hintText: hintTxt,
        ),
      ),
    );
  }
}
