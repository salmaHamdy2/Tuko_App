// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:language_app/components/my_data.dart';
import 'package:language_app/components/shared_widget.dart';

// ignore: must_be_immutable
class Numbers extends StatelessWidget {
  Numbers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff463029),
        title: const Text(
          "Numbers",
          style: TextStyle(fontSize: 24),
        ),
      ),
      body: ListView.builder(
        itemCount: numberList.length,
        itemBuilder: (context, index) {
          return SharedWidget(
            color: const Color(0xffFA9532),
            number: numberList[index],
          );
        },
      ),
      
    );
  }
}
