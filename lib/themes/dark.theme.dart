import 'package:flutter/material.dart';

const brightness = Brightness.dark;
const primaryColor = const Color(0xFF00C569);
const lightColor = const Color(0xFFFFFFFF);
const backgroundColor = const Color(0xFFF5F5F5);

ThemeData darkTheme() {
  return ThemeData(
    brightness: brightness,
    //textTheme: new TextTheme(
    //    bodyText1: TextStyle(color: Colors.red),
    //    headline4: TextStyle(fontSize: 78),
    //    button: TextStyle(color: Colors.green),
    //   ),
    primaryColor: primaryColor,
    accentColor: Colors.black26,
  );
}
