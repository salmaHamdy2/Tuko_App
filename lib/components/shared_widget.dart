// ignore_for_file: must_be_immutable, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:language_app/components/container_widget.dart';
import 'package:language_app/models/item.dart';

// ignore: camel_case_types
class SharedWidget extends StatelessWidget {
  SharedWidget({super.key, required this.number, required this.color});
  Item number;
  Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: Row(
        children: [
          Container(
              color: Color(0xffEEEBD6),
              width: 104,
              height: 104,
              child: Image(image: AssetImage("${number.img}"))),
          Expanded(child: MyContainer(number: number, color: color))
        ],
      ),
    );
  }
}
