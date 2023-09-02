import 'package:flutter/material.dart';

class MyConstant {
  static Color primary = const Color.fromARGB(0, 9, 73, 119);
  static Color succes = const Color.fromARGB(0, 9, 119, 86);
  static Color warning = const Color.fromARGB(0, 219, 176, 21);
  static Color danger = const Color.fromARGB(0, 219, 39, 23);
  static Color info = const Color.fromARGB(0, 15, 55, 199);

  TextStyle h1Style() {
    return const TextStyle(
        fontFamily: 'Raleway',
        fontSize: 20,
        color: Colors.white,
        fontWeight: FontWeight.bold);
  }

  TextStyle h2Style() {
    return TextStyle(
        fontFamily: 'Raleway',
        fontSize: 18,
        color: primary,
        fontWeight: FontWeight.bold);
  }
}