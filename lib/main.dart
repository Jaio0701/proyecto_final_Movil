// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'theme/app_theme.dart';
import 'screens/login.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme(selectedColor: 4).theme(),
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
