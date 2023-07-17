import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:cmp_task_1/screens/splash_screen/splash_sceen_2.dart';
import 'package:google_fonts/google_fonts.dart';

class Splash_1 extends StatefulWidget {
  @override
  State<Splash_1> createState() => _Splash_1State();
}

class _Splash_1State extends State<Splash_1> {
  @override
  void initState() {
    super.initState();

    Timer(
      Duration(seconds: 3),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) {
              return Splash_2();
            },
          ),
        );
      },
    );
  }

  Widget build(BuildContext context) {
    double baseWidth = 1000;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    return Stack(
      children: [
        Container(
          color: Color(0xfff7e5b7),
          child: Image.asset(
            'assets/images/vector-3_1.png',
            fit: BoxFit.cover,
            height: 667.sp,
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              // margin: EdgeInsets.all(),

              child: Image.asset(
                'assets/images/logo-VrZ.png',
                height: 110.sp,
                width: 88.sp,
              ),
            ),
            Container(
              child: Text(
                'Welcome',
                style: TextStyle(
                    color: Color(0xfff7e5b7),
                    fontWeight: FontWeight.w400,
                    decoration: TextDecoration.none,
                    fontFamily: 'Capriola'),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
