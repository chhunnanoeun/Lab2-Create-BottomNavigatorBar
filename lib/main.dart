import 'package:flutter/material.dart';
import 'package:widgets_basic/constant/my_constant.dart';
import 'package:widgets_basic/screens/bottomnavbar.dart';
//import 'package:widgets_basic/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        scaffoldBackgroundColor: MyConstant.succes,
        primaryColor: MyConstant.info,
      ),
      home: const BottomNavBar(),
    );
  }
}

