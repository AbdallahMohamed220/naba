import 'package:flutter/material.dart';
import 'package:naba/theme/color.dart';
import 'package:naba/ui/screens/login/login.dart';
import 'package:naba/ui/widgets/app_drawer/app_drawer.dart';

class TeacherScreen extends StatefulWidget {
  @override
  _TeacherScreenState createState() => _TeacherScreenState();
}

class _TeacherScreenState extends State<TeacherScreen> {
  final GlobalKey<ScaffoldState> _scaffoldkey = new GlobalKey<ScaffoldState>();
  List<String> _stages = [
    'المرحلة الابتدائية',
    'المرحلة الاعدادية',
    'المرحلة الثانوية',
  ];
  List<String> _studingClass = [
    'الفصل الاول',
    'الفصل الثانى',
    'الفصل الثالت',
  ];

  String _selectstages = 'الرحلة الدراسية';
  String _selectclass = 'اختر الفصل';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 110,
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
                            icon: Icon(
                              Icons.menu,
                            ),
                            color: AppColor.kAccentColor,
                            onPressed: () {
                              _scaffoldkey.currentState.openDrawer();
                            },
                          ),
                          IconButton(
                            color: AppColor.kAccentColor,
                            icon: Icon(Icons.close),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
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
            ),
            SizedBox(
              height: 15,
            ),
            Expanded(
              child: ListView(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      right: 15,
                    ),
                    child: Text(
                      'نور المعلم و المعلمة',
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      right: 15,
                    ),
                    child: Text(
                      'اختر  المرحلة الدراسية',
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                  DropdownWidget(
                    selectedList: _stages,
                    selectItem: _selectstages,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      right: 15,
                    ),
                    child: Text(
                      'اختر الفصل الدراسى',
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                  DropdownWidget(
                    selectedList: _studingClass,
                    selectItem: _selectclass,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      right: 15,
                    ),
                    child: Text(
                      'المواد',
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        fontSize: 22,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  SubjectItem(
                    label: 'لغتى',
                  ),
                  SubjectItem(
                    label: 'فقة',
                  ),
                  SubjectItem(
                    label: 'توحيد',
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

// ignore: must_be_immutable
class SubjectItem extends StatelessWidget {
  SubjectItem({this.label});
  String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      height: 70,
      width: deviceWidth,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.grey[100],
          blurRadius: 6,
          offset: Offset(1, 3),
        )
      ]),
      child: Card(
        elevation: 0.5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Padding(
            padding: const EdgeInsets.only(top: 15.0, right: 10),
            child: Text(
              label,
              textAlign: TextAlign.right,
              style: TextStyle(
                color: Color(0xff0B7D6E),
                fontSize: 18,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class DropdownWidget extends StatefulWidget {
  DropdownWidget({this.selectItem, this.selectedList});

  String selectItem;
  List<String> selectedList;

  @override
  _DropdownWidgetState createState() => _DropdownWidgetState();
}

class _DropdownWidgetState extends State<DropdownWidget> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        width: deviceWidth * 0.5,
        height: 50,
        padding: EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: FormField<String>(
          builder: (FormFieldState<String> state) {
            return DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                elevation: 1,
                hint: Text(
                  widget.selectItem,
                ),
                dropdownColor: Colors.grey[100],
                iconEnabledColor: Colors.grey[100],
                isDense: true,
                icon: Icon(
                  Icons.arrow_drop_down,
                  size: 28,
                  color: Color(0xff0B7D6E),
                ),
                onChanged: (String newValue) {
                  setState(() {
                    widget.selectItem = newValue;
                  });
                },
                items: widget.selectedList.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Center(
                      child: Text(
                        value,
                        textAlign: TextAlign.end,
                      ),
                    ),
                  );
                }).toList(),
              ),
            );
          },
        ),
      ),
    );
  }
}
