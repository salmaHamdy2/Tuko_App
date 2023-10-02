// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:language_app/components/shared_widget.dart';
import 'package:language_app/components/my_data.dart';

class ColorScreen extends StatelessWidget {
  const ColorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff463029),
        title: const Text(
          "Colors",
          style: TextStyle(fontSize: 24),
        ),
      ),
      body: ListView.builder(
        itemCount: color.length,
        itemBuilder: (context, index) {
          return SharedWidget(
            color: Color(0xff7E3FA3),
            number: color[index],
          );
        },
      ),
    );
  }
}
