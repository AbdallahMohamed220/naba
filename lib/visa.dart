import 'package:flutter/material.dart';

class visa extends StatelessWidget {
  visa({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Container(
            width: 375.0,
            height: 80.0,
            decoration: BoxDecoration(
              color: const Color(0xffffffff),
            ),
          ),
          Container(
            width: 375.0,
            height: 73.0,
            decoration: BoxDecoration(
              color: const Color(0xff0b7d6e),
            ),
          ),
          Transform.translate(
            offset: Offset(246.0, -14.0),
            child: Container(
              width: 116.0,
              height: 116.0,
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xffffffff)),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29b8b8b8),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(217.0, -44.0),
            child:
                // Adobe XD layer: 'نبع النهائي-0١' (shape)
                Container(
              width: 152.0,
              height: 197.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(23.0, 24.0),
            child: Text(
              '',
              style: TextStyle(
                fontFamily: 'Font Awesome 5 Free',
                fontSize: 25,
                color: const Color(0xffffffff),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(67.0, 24.0),
            child: Text(
              '',
              style: TextStyle(
                fontFamily: 'Font Awesome 5 Free',
                fontSize: 25,
                color: const Color(0xffffffff),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(138.0, 131.0),
            child: Text(
              'الدفع بالبطاقة الائتمانية',
              style: TextStyle(
                fontFamily: 'GE SS Two',
                fontSize: 20,
                color: const Color(0xff101010),
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(13.0, 559.0),
            child: Container(
              width: 349.0,
              height: 40.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: const Color(0xff2ccab5),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(162.0, 562.0),
            child: Text(
              'تأكيد',
              style: TextStyle(
                fontFamily: 'GE SS Two',
                fontSize: 20,
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(14.0, 212.0),
            child: Container(
              width: 347.0,
              height: 323.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(188.0, 159.0),
            child: Text(
              'الإجمالي : 500 ريال سعودي',
              style: TextStyle(
                fontFamily: 'GE SS Two',
                fontSize: 15,
                color: const Color(0xff101010),
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }
}
