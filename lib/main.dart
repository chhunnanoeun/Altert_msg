import 'package:flutter/material.dart';
//import 'package:onborading_screen/Screens/Sign_in/sign_in.dart';
import 'package:onborading_screen/Screens/auth_page.dart';
//import 'package:onborading_screen/Screens/onboarding_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
//import 'package:onborading_screen/Screens/onboarding_screen.dart';

void main() async {
  // ...
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  // ignore: prefer_const_constructors
  runApp(MyApp());

}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'OM BOARDING SCREEN',
      theme: ThemeData.light(useMaterial3: true),
      // 
      home: const AuthPage(),
    );
  }
}