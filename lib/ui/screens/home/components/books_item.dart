import 'package:flutter/material.dart';
import 'package:naba/theme/color.dart';
import 'package:naba/ui/screens/book_details/book_details.dart';

class BooksItem extends StatelessWidget {
  const BooksItem({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (_) => BookDetails()),
        );
      },
      child: Expanded(
        child: Stack(
          children: [
            Card(
              color: AppColor.kAccentColor,
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
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
                              Text(
                                'ريال سعودى',
                                style: TextStyle(fontSize: 13),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          'المرحلة الابتدائية',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Container(
                      height: 35,
                      width: 250,
                      decoration: BoxDecoration(
                        color: AppColor.kPrimaryColor,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(8),
                          bottomRight: Radius.circular(8),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'اضافة للسلة',
                          style: TextStyle(
                            color: AppColor.kAccentColor,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              child: Container(
                width: 40,
                height: 40,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.red),
                child: Center(
                  child: Text(
                    '20%',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: AppColor.kAccentColor,
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
