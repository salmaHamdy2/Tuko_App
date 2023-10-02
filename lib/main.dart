// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:language_app/Screens/splash.dart';

void main() {
  runApp(LangApp());
}

class LangApp extends StatelessWidget {
  const LangApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash(),
    );
  }
}
