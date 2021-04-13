import 'package:flutter/material.dart';
import 'package:naba/theme/color.dart';
import 'package:naba/ui/screens/available_drive_address/available_drive_address.dart';
import 'package:naba/ui/screens/login/login.dart';
import 'package:naba/ui/widgets/appbar/appbar.dart';
import 'package:naba/ui/widgets/button_action/button_action.dart';
import 'package:naba/ui/widgets/custome_text_fied/custome_text_field.dart';
import 'package:naba/ui/widgets/validator/validator.dart';

class DriveAddressScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldkey = new GlobalKey<ScaffoldState>();
  final _formKey = GlobalKey<FormState>();
  TextEditingController city = new TextEditingController();
  TextEditingController street = new TextEditingController();
  TextEditingController buldingNumber = new TextEditingController();
  TextEditingController floorNumber = new TextEditingController();
  TextEditingController flatNumber = new TextEditingController();
  TextEditingController phoneNumber = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              AppBarWidget(
                isHomescreen: false,
                onDrawerIconTap: () {
                  _scaffoldkey.currentState.openDrawer();
                },
              ),
              Expanded(
                child: ListView(
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 15.0, bottom: 6),
                      child: Text(
                        'عنوان التوصيل',
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    CustomeTextField(
                      controller: city,
                      validator: Validator.notEmpty,
                      hintTxt: 'المدينة',
                      obscureTextbool: false,
                    ),
                    CustomeTextField(
                      controller: street,
                      validator: Validator.notEmpty,
                      hintTxt: 'اسم الشارع',
                      obscureTextbool: false,
                    ),
                    CustomeTextField(
                      controller: buldingNumber,
                      validator: Validator.notEmpty,
                      hintTxt: 'رقم المبني',
                      obscureTextbool: false,
                    ),
                    CustomeTextField(
                      controller: floorNumber,
                      validator: Validator.notEmpty,
                      hintTxt: 'رقم الطابق',
                      obscureTextbool: false,
                    ),
                    CustomeTextField(
                      controller: flatNumber,
                      validator: Validator.notEmpty,
                      hintTxt: 'رقم الشقة',
                      obscureTextbool: false,
                    ),
                    CustomeTextField(
                      controller: buldingNumber,
                      validator: Validator.notEmpty,
                      hintTxt: 'رقم الهاتف',
                      obscureTextbool: false,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: ButtonActiion(
                        label: 'حفظ العنوان',
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (_) => AvailableDriveAddress()),
                          );
                        },
                        buttonHeight: 50,
                        butttonWidth: deviceWidth * 0.8,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
