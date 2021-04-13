import 'package:flutter/material.dart';
import 'package:naba/theme/color.dart';
import 'package:naba/ui/screens/home/home.dart';
import 'package:naba/ui/screens/prepare/prepare.dart';
import 'package:naba/ui/screens/register/register.dart';
import 'package:naba/ui/screens/Purchase_successfully/Purchase_successfully.dart';
import 'package:naba/ui/screens/last_one/last_one.dart';
import 'package:naba/ui/screens/last_two/last_two.dart';
import 'package:naba/ui/screens/last_three/last_three.dart';
import 'package:naba/ui/screens/main_menu/main_menu.dart';
import 'package:naba/ui/widgets/button_action/button_action.dart';
import 'package:naba/ui/widgets/custome_text_fied/custome_text_field.dart';
import 'package:naba/ui/widgets/header/header.dart';
import 'package:naba/ui/widgets/logo/logo.dart';
import 'package:naba/ui/widgets/validator/validator.dart';

var deviceWidth;
var deviceHeight;

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();
  bool isLoading = false;

  //  var loadingKit = Center(
  //       child: Column(children: [
  //         SizedBox(height: 20,),
  //         SpinKitSquareCircle(
  //         color: Colors.black,
  //         size: 50.0,
  //       ),
  //       ],),
  //     );

  login() async {
    // setState(() {
    //   isLoading = true;
    // });

    // if (_formKey.currentState.validate()) {
    //   await  AccountService.login(email: email.text, password : password.text);

    //   Navigator.pushNamed(context, '/init_data');
    // }

    // setState(() {
    //   isLoading = false;
    // });
  }

  @override
  Widget build(BuildContext context) {
    deviceWidth = MediaQuery.of(context).size.width;
    deviceHeight = MediaQuery.of(context).size.height;
    print(deviceWidth);
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
                  label: 'تسجيل الدخول',
                ),
                CustomeTextField(
                  controller: email,
                  validator: Validator.notEmpty,
                  hintTxt: 'البريد الالكترونى',
                  obscureTextbool: false,
                ),
                CustomeTextField(
                  controller: password,
                  validator: Validator.notEmpty,
                  hintTxt: 'كلمة المرور',
                  obscureTextbool: false,
                ),
                SizedBox(
                  height: 50,
                ),
                ButtonActiion(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => HomeScreen()),
                    );
                  },
                  label: 'تسجيل الدخول',
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
