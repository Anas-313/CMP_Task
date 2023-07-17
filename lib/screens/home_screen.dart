import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:firebase_auth/firebase_auth.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 25),
                      child: Text(
                        'Hi Monica !',
                        style: TextStyle(
                            fontFamily: 'Lexend',
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w400,
                            color: Colors.deepPurple),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              'Current Location',
                              style: TextStyle(
                                  color: Color(0xff7B7B7B),
                                  fontSize: 10.sp,
                                  fontFamily: 'Lexend'),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset(
                                  'assets/images/location-marker.png',
                                  height: 16.sp,
                                  width: 16.sp,
                                ),
                                Text(
                                  'Heydrbad',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12.sp,
                                      fontFamily: 'Lexend',
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Image(image: AssetImage('assets/images/play.png')),
                            Text(
                              'How it works',
                              style: TextStyle(
                                  color: Color(0xff7B7B7B),
                                  fontSize: 12.sp,
                                  fontFamily: 'Lexend'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                width: 328.sp,
                height: 130.sp,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                        image: AssetImage(
                          "assets/images/top-view-food-frame.png",
                        ),
                        fit: BoxFit.cover)),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Column(
                        children: [
                          Container(
                            child: Text(
                              'Enjoy your first order, the taste of our delicious food!',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Lexend',
                                  fontSize: 16.sp),
                            ),
                            width: 165.sp,
                            height: 60.sp,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                              vertical: 5,
                            ),
                            child: Image.asset(
                              "assets/images/coupen-1.png",
                              width: 145.sp,
                              height: 33.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: TextField(
                decoration: InputDecoration(
                  suffixIcon: Icon(
                    Icons.search,
                    color: Colors.deepPurple,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey.shade400,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  hintText: 'Search food for events',
                  hintStyle: TextStyle(
                      fontSize: 12.sp,
                      fontFamily: 'Lexend',
                      color: Color(0xff545454)),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Start crafting',
                      style: TextStyle(
                          fontSize: 20.sp,
                          fontFamily: 'Lexend',
                          color: Color(0xff6318AF)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              width: 158.46.sp,
                              height: 90.sp,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(10),
                                      topLeft: Radius.circular(10)),
                                  image: DecorationImage(
                                      image: AssetImage(
                                        'assets/images/dishes-including-chicken-rice-other-food.png',
                                      ),
                                      fit: BoxFit.cover)),
                              child: Text(''),
                            ),
                            Container(
                              width: 158.46.sp,
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10)),
                              ),
                              child: Text(
                                'Default Platters',
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    fontFamily: 'Lexend',
                                    color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            Container(
                              width: 158.46.sp,
                              height: 90.sp,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(10),
                                      topLeft: Radius.circular(10)),
                                  image: DecorationImage(
                                      image: AssetImage(
                                        'assets/images/traditional-indian-dish.png',
                                      ),
                                      fit: BoxFit.cover)),
                              child: Text(''),
                            ),
                            Container(
                              width: 158.46.sp,
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10)),
                              ),
                              child: Text(
                                'Default Platters',
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    fontFamily: 'Lexend',
                                    color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 190,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: ElevatedButton(
                onPressed: () async {
                  await FirebaseAuth.instance.signOut();
                },
                child: Text('Logged Out'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
// Container(
//   margin: EdgeInsets.only(left: 20.w),
//   // margin: EdgeInsets.symmetric(horizontal: 20),
//   height: 20.h,
//   width: 50.w,
//   decoration: BoxDecoration(color: Colors.white, boxShadow: [
//     BoxShadow(
//         color: Colors.black.withOpacity(0.2),
//         spreadRadius: 2,
//         blurRadius: 3)
//   ]),
//   child: Column(
//     children: [
//       Text('Default menu 1'),
//     ],
//   ),
// ),
// Container(
//   margin: EdgeInsets.only(left: 60, top: 30),
//   decoration: BoxDecoration(
//       borderRadius: BorderRadius.circular(20),
//       boxShadow: [
//         BoxShadow(
//             color: Colors.black.withOpacity(0.3),
//             blurRadius: 1,
//             offset: Offset(-2, 2))
//       ]),
//   child: CircleAvatar(
//     backgroundColor: Colors.white,
//     radius: 25,
//     backgroundImage: Image.asset(
//       'assets/images/unsplash-lv174o7fn7y-teV.png',
//     ).image,
//   ),
// ),
// SizedBox(
//   height: 200,
// ),
