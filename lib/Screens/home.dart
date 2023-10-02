import 'package:flutter/material.dart';
import 'package:language_app/Screens/colors.dart';
import 'package:language_app/Screens/family.dart';
import 'package:language_app/Screens/numbers.dart';
import 'package:language_app/Screens/phrases.dart';
import 'package:language_app/components/category_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEEEBD6),
      appBar: AppBar(
        backgroundColor: const Color(0xff463029),
        title: const Text(
          "Tuko",
          style: TextStyle(fontSize: 24),
        ),
      ),
      body: Column(
        children: [
          Category(
            txt: "Numbers",
            color: const Color(0xffFA9532),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Numbers();
              }));
            },
          ),
          Category(
            txt: "Family Members",
            color: const Color(0xff538033),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const FamilyScreen();
              }));
            },
          ),
          Category(
            txt: "Colors",
            color: const Color(0xff7E3FA3),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const ColorScreen();
              }));
            },
          ),
          Category(
            txt: "Phrases",
            color: const Color(0xff48A5CC),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const PhrasesScreen();
              }));
            },
          ),
        ],
      ),
    );
  }
}
