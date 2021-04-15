import 'package:flutter/material.dart';
import 'package:naba/ui/screens/subjects/subjects.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('القائمة',
                    textAlign: TextAlign.end,
                    style: TextStyle(
                      fontSize: 20,
                    )),
              ),
              SizedBox(
                height: 15,
              ),
              DrawerItem(
                label: 'القدرات',
                onTap: () {},
              ),
              Divider(),
              DrawerItem(
                label: 'التحصيلى',
                onTap: () {},
              ),
              Divider(),
              DrawerItem(
                label: 'الكتب',
                onTap: () {
                   Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => SubjectsScreen(type: "books",),
                    ),
                  );
                },
              ),
              Divider(),              
              DrawerItem(
                label: 'نور الطالب والطالبة',
                onTap: () {
                   Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => SubjectsScreen(type: "noor_student",),
                    ),
                  );
                },
              ),
              Divider(),
              DrawerItem(
                label: 'نور المعلم والمعلمة',
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => SubjectsScreen(type: "noor_teacher",),
                    ),
                  );
                },
              ),
              Divider(),
              DrawerItem(
                label: 'اخرى',
                onTap: () {},
              ),
              Divider(),
            ],
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class DrawerItem extends StatelessWidget {
  DrawerItem({
    this.label,
    this.onTap,
  });
  String label;
  VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          label,
          textAlign: TextAlign.end,
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
