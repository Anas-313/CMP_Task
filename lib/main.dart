import 'package:cmp_task_1/screens/splash_screen/splash_sceen_2.dart';
import 'package:flutter/material.dart';
import 'package:cmp_task_1/screens/splash_screen/splash_sceen_1.dart';
import 'package:sizer/sizer.dart';
import 'firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cmp_task_1/screens/auth_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData.light(),
          home: Splash_1(),
        );
      },
    );
  }
}
