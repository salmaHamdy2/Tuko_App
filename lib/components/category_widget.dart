import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Category extends StatelessWidget {
  Category({super.key, this.txt, this.color,this.onTap});
  String? txt;
  Color? color;
  Function ()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.only(left: 20),
        alignment: Alignment.centerLeft,
        height: 70,
        width: double.infinity,
        color: color,
        child: Text(
          "$txt",
          style: const TextStyle(color: Colors.white, fontSize: 22),
        ),
      ),
    );
  }
}
