import 'package:flutter/material.dart';
import 'package:naba/models/subject.dart';
import 'package:naba/services/subject_services.dart';
import 'package:naba/theme/color.dart';
import 'package:naba/ui/screens/login/login.dart';
import 'package:naba/ui/screens/sections/sections.dart';
import 'package:naba/ui/widgets/app_drawer/app_drawer.dart';
import 'package:naba/ui/widgets/appbar/appbar.dart';

class SubjectsScreen extends StatefulWidget {

  String type;

  SubjectsScreen({this.type});

  @override
  _SubjectsScreenState createState() => _SubjectsScreenState();
}

class _SubjectsScreenState extends State<SubjectsScreen> {
  
  final GlobalKey<ScaffoldState> _scaffoldkey = new GlobalKey<ScaffoldState>();

  List<Subject> subjects = [];

  List<String> _stages = [
    '1',
    '2',
    '3',
  ];
  
  List<String> _studingClass = ["1","2","3","4","5","6","7","8","9","10"];

  String _selectstages;
  String _selectclass;
  String _selectHalf;

  setStatge(String statge){
    setState(() {
      _selectstages = statge;
      _selectclass = null;
      _selectHalf = null;
    });
  }

  setClass(String classT){
    setState(() {
      _selectclass = classT;
      _selectHalf = null;
    });
  }

  setHalf(String half) async {

    setState(() {
      _selectHalf = half;
    });

    List<Subject> subjectsTemp =  await SubjectsServices.getSubjects(_selectclass);

    setState(() {
      subjects = subjectsTemp;
    });
    
    }

  String getStagesByNumber(String statge){
    if(statge == "1"){
      return "المرحلة الإبتدائية";
    }else if(statge == "2"){
      return "المرحلة الإعدادية";
    }else if(statge == "3"){
      return "المرحلة الثانوية";
    }else{
      return "---";
    }
  }

    String getHalfByNumber(String statge){
    if(statge == "1"){
      return "الفصل الدراسي الاول";
    }else if(statge == "2"){
      return "الفصل الدراسي الثاني";
    }else{
      return "---";
    }
  }

    String getClassByNumber(String statge){
    if(statge == "1"){
      return "الصف الاول الإبتدائي";
    }else if(statge == "2"){
      return "الصف الثاني الإبتدائي";
    }else if(statge == "3"){
      return "الصف الثالث الإبتدائي";
    }else if(statge == "4"){
      return "الصف الرابع الإبتدائي";
    }else if(statge == "5"){
      return "الصف الخامس الإبتدائي";
    }else if(statge == "6"){
      return "الصف السادس الإبتدائي";
    }else if(statge == "7"){
      return "الصف الاول متوسط";
    }else if(statge == "8"){
      return "الصف الثاني متوسط";
    }else if(statge == "9"){
      return "الصف الثالث متوسط";
    }else if(statge == "10"){
      return "الصف الثانوي";
    }else{
      return "---";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      body: SafeArea(
        child: Column(
          children: [
            AppBarWidget(
              isHomescreen: false,
              onDrawerIconTap: () {
                _scaffoldkey.currentState.openDrawer();
              },
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
                     widget.type == "noor_teacher" ?  'نور المعلم و المعلمة' : widget.type == "noor_student" ? "نور الطالب و الطالبة" : "الكتب",
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),


                  SizedBox(
                    height: 15,
                  ),



                  // statge
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
                    convertToString: getStagesByNumber,
                    setFunc: setStatge,
                  ),

                  Divider(),

                  // class
                  _selectstages == null ? SizedBox() :  Padding(
                    padding: EdgeInsets.only(
                      right: 15,
                    ),
                    child: Text(
                      'اختر الصف الدراسى',
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                  _selectstages == null ? SizedBox() :  DropdownWidget(
                    selectedList: _selectstages == "1" ? ["1","2","3","4","5","6"] : _selectstages == "2" ? ["7","8","9"] : _selectstages == "3" ? ["10"] : [],
                    selectItem: _selectclass,
                    convertToString: getClassByNumber,
                    setFunc: setClass,
                  ),

                  _selectstages == null ? SizedBox() :  Divider(),

                  // statge
                    _selectstages == null || _selectclass == null ? SizedBox() : Padding(
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
                  _selectstages == null || _selectclass == null ? SizedBox() :  DropdownWidget(
                    selectedList: ["1","2"],
                    selectItem: _selectHalf,
                    convertToString: getHalfByNumber,
                    setFunc: setHalf,
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

                  
                  ... subjects.map((subject) => InkWell(
                    onTap: (){
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => SectionsScreen(sections: subject.sections,)),
                      );                    
                     },
                      child: SubjectItem(
                      label: subject.name,
                    ),
                  ),).toList()

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
  DropdownWidget({this.selectItem, this.selectedList,this.convertToString,this.setFunc});

  String selectItem;
  List<String> selectedList;
  dynamic convertToString;
  dynamic setFunc;

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
                  "اختر القيمة",
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
                  widget.setFunc(newValue);
                  setState(() {
                    widget.selectItem = newValue;
                  });
                },
                value: widget.selectItem,
                
                items: widget.selectedList.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Center(
                      child: Text(
                        widget.convertToString(value),
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
