import 'package:flutter/material.dart';
import 'package:untitled/BMI/BMIScreen.dart';
import 'package:untitled/UserScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      home: BMIScreen(),
    );
  }
}

