import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:cmp_task_1/screens/home_screen.dart';

class RegisterScreen extends StatefulWidget {
  final void Function()? onTap;

  RegisterScreen({required this.onTap});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPassword = TextEditingController();

  void signUserUp() async {
    showDialog(
      context: this.context,
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );

    try {
      if (passwordController.text == confirmPassword.text) {
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: emailController.text,
          password: passwordController.text,
        );
      } else {
        showErrorMessage("Password don't match");
      }
      //pop the loading circle
      Navigator.pop(this.context);
    } on FirebaseAuthException catch (e) {
      showErrorMessage(e.code);
    }
  }

  void showErrorMessage(String message) {
    showDialog(
        context: this.context,
        builder: (context) {
          return AlertDialog(
            title: Text(
              message,
              style: TextStyle(color: Colors.white),
            ),
            backgroundColor: Colors.deepPurple,
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Column(
              children: [
                Stack(
                  children: [
                    Image.asset(
                      'assets/images/vector-54_1.png',
                      fit: BoxFit.cover,
                      width: 1000.sp,
                    ),
                    Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 60.0),
                          alignment: Alignment.center,
                          child: Image.asset(
                            'assets/images/cmp-logo-.png',
                            height: 107.sp,
                            width: 107.sp,
                          ),
                        ),
                        Container(
                          child: Text(
                            'CraftMyPlate',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 20.sp,
                              decoration: TextDecoration.none,
                              color: Color(0xfffcfff7),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 30, top: 50),
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Signup',
                          style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 14.sp,
                            color: Color(0xff787878),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25.0),
                        child: Column(
                          children: [
                            TextField(
                              controller: emailController,
                              decoration: InputDecoration(
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
                                hintText: 'Enter Email',
                                hintStyle: TextStyle(fontSize: 12.sp),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            TextField(
                              controller: passwordController,
                              obscureText: true,
                              decoration: InputDecoration(
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
                                hintText: 'Enter Password',
                                hintStyle: TextStyle(fontSize: 12.sp),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            TextField(
                              controller: confirmPassword,
                              obscureText: true,
                              decoration: InputDecoration(
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
                                hintText: 'Re Enter Password',
                                hintStyle: TextStyle(fontSize: 12.sp),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text('Already Registered ?  '),
                                GestureDetector(
                                  onTap: widget.onTap,
                                  child: Text(
                                    'Login',
                                    style: TextStyle(
                                        color: Colors.blueAccent,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            TextButton(
                              onPressed: () {
                                signUserUp();
                              },
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                  Color(0xff6318af),
                                ),
                                fixedSize: MaterialStateProperty.all(
                                  Size(327.sp, 44.sp),
                                ),
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                              ),
                              //
                              child: Text(
                                'Register',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 14.sp),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
