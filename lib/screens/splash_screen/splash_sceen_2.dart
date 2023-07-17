import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:cmp_task_1/screens/auth_screen.dart';

class Splash_2 extends StatefulWidget {
  const Splash_2({super.key});

  @override
  State<Splash_2> createState() => _Splash_2State();
}

class _Splash_2State extends State<Splash_2> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
        return AuthScreen();
      },),);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          child: Image.asset(
            'assets/images/vector-3_2.png',
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
            // Container(
            //   width: double.infinity,
            //   // height: 141.sp,
            //   child: Image.asset(
            //     'assets/images/logo-3.png',
            //   ),
            // ),
            Text(
              'Craft My plate',
              style: TextStyle(
                decoration: TextDecoration.none,
                fontWeight: FontWeight.w400,
                color: Color(0xfff7e5b7),
                fontFamily: 'Capriola',
              ),
            ),
            Text(
              'you customise, we cater',
              style: TextStyle(
                decoration: TextDecoration.none,
                fontStyle: FontStyle.italic,
                color: Color(0xfff7e5b7),
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                fontFamily: 'Courgette',
              ),
            ),
          ],
        ),
      ],
    );
  }
}
