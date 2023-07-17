import 'package:flutter/material.dart';
import 'package:cmp_task_1/screens/login_screen.dart';
import 'package:cmp_task_1/screens/register_screen.dart';

class LogiOrRegister extends StatefulWidget {
  @override
  State<LogiOrRegister> createState() => _LogiOrRegisterState();
}

class _LogiOrRegisterState extends State<LogiOrRegister> {
  //Initially show login Screen

  bool showLoginScreen = true;

  void togglePage() {
    setState(() {
      showLoginScreen = !showLoginScreen;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginScreen) {
      return LoginScreen(
        onTap: togglePage,
      );
    } else {
      return RegisterScreen(
        onTap: togglePage,
      );
    }
  }
}
