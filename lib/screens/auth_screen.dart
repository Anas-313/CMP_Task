import 'package:cmp_task_1/screens/home_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cmp_task_1/screens/login_or_register.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        //User is logged in
        if (snapshot.hasData) {
          return HomeScreen();
        }
        //User is not logged in
        else {
          return LogiOrRegister();
        }
      },
    ));
  }
}
