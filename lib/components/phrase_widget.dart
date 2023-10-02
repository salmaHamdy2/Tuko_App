// ignore_for_file: must_be_immutable, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:language_app/components/container_widget.dart';
import 'package:language_app/models/item.dart';

// ignore: camel_case_types
class phrasewidget extends StatelessWidget {
  phrasewidget({super.key, required this.number, required this.color});
  Item number;
  Color color;
  @override
  Widget build(BuildContext context) {
    
    return SizedBox(
     
      height: 128,
      child: MyContainer(
        number: number,
        color: color,
      ),
    );
  }
}
