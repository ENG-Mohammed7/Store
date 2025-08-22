import 'package:flutter/material.dart';
import 'screens/login_screen.dart';  // استدعاء الشاشة  // استدعاء الشاشة

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, 
      title: 'متجري',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const LoginScreen(), // ربط شاشة تسجيل الدخول
    );
  }
}
