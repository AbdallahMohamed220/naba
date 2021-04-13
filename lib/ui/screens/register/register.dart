import 'package:flutter/material.dart';
import 'package:naba/theme/color.dart';
import 'package:naba/ui/screens/login/login.dart';
import 'package:naba/ui/widgets/button_action/button_action.dart';
import 'package:naba/ui/widgets/custome_text_fied/custome_text_field.dart';
import 'package:naba/ui/widgets/header/header.dart';
import 'package:naba/ui/widgets/logo/logo.dart';
import 'package:naba/ui/widgets/validator/validator.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController name = new TextEditingController();
  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();
  TextEditingController confirmPassword = new TextEditingController();
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: deviceWidth,
        height: deviceHeight,
        color: AppColor.kAccentColor,
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 60,
                ),
                LogoWidget(),
                SizedBox(
                  height: 100,
                ),
                HeaderWidget(
                  label: 'التسجيل',
                ),
                CustomeTextField(
                  controller: name,
                  validator: Validator.notEmpty,
                  hintTxt: 'الاسم',
                  obscureTextbool: false,
                ),
                CustomeTextField(
                  controller: email,
                  validator: Validator.notEmpty,
                  hintTxt: 'البريد الالكترونى',
                  obscureTextbool: false,
                ),
                CustomeTextField(
                  controller: email,
                  validator: Validator.notEmpty,
                  hintTxt: 'كلمة المرور',
                  obscureTextbool: false,
                ),
                CustomeTextField(
                  controller: email,
                  validator: Validator.notEmpty,
                  hintTxt: 'تأكيد كلمة المرور',
                  obscureTextbool: false,
                ),
                SizedBox(
                  height: 20,
                ),
                ButtonActiion(
                  onPressed: () {},
                  label: 'التسجيل',
                  butttonWidth: deviceWidth * 0.8,
                  buttonHeight: 40,
                ),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
