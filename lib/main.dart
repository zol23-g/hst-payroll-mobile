import 'package:flutter/material.dart';
import 'package:hst_payroll/Welcome/welcome_screen.dart';
import 'package:hst_payroll/intro_page.dart';
import 'package:hst_payroll/loginPage/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue.shade900),
        useMaterial3: true,
      ),
      home:  WelcomeScreen(),
      // home: IntroductoryPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

