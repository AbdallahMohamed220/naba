import 'package:flutter/material.dart';
import 'package:naba/theme/color.dart';
import 'package:naba/ui/screens/drive_address/drive_address.dart';
import 'package:naba/ui/screens/login/login.dart';
import 'package:naba/ui/widgets/app_drawer/app_drawer.dart';
import 'package:naba/ui/widgets/appbar/appbar.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  final GlobalKey<ScaffoldState> _scaffoldkey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldkey,
      drawer: AppDrawer(),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
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
            Padding(
              padding: const EdgeInsets.only(right: 15.0, bottom: 6),
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'سلة المشتريات',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      '(4)',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                reverse: true,
                itemCount: 6,
                itemBuilder: (_, i) => CartItem(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 25.0,
                right: 8,
                bottom: 15,
              ),
              child: Text(
                'الاجمالى 500 ريال سعودى',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => DriveAddressScreen(),
                      ),
                    );
                  },
                  child: Text(
                    'تأكيد عملية الشراء',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: AppColor.kPrimaryColor,
                    minimumSize: Size(
                      deviceWidth * 0.8,
                      40,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CartItem extends StatelessWidget {
  const CartItem({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      child: Card(
        color: AppColor.kAccentColor,
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 20,
            ),
            Center(
              child: Image.asset(
                'assets/images/slider_img1.png',
                width: 130,
                height: 140,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 5.0),
              child: Text(
                'سلسلة الحاسب الالى للمرحلة الابتدائية',
                textAlign: TextAlign.end,
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 5.0),
              child: Text(
                'خطوة نحو إعداد الطالب لمواكبة التطور التقنى الرقمى',
                textAlign: TextAlign.end,
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
            Container(
              height: 50,
              width: 250,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '207',
                          style: TextStyle(fontSize: 20),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: Text(
                            'ريال سعودى',
                            style: TextStyle(fontSize: 13),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        right: 5.0,
                      ),
                      child: Text(
                        'المرحلة الابتدائية',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 35,
              width: 250,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(8),
                  bottomRight: Radius.circular(8),
                ),
              ),
              child: Center(
                child: Text(
                  'حذف',
                  style: TextStyle(
                    color: AppColor.kAccentColor,
                    fontSize: 16,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
