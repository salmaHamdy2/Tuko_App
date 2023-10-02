import 'package:flutter/material.dart';
import 'package:language_app/components/my_data.dart';
import 'package:language_app/components/shared_widget.dart';

class FamilyScreen extends StatelessWidget {
  const FamilyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff463029),
        title: const Text(
          "Family Members",
          style: TextStyle(fontSize: 24),
        ),
      ),
      body: ListView.builder(
        itemCount: familyList.length,
        itemBuilder: (context, index) {
          return SharedWidget(
            color: const Color(0xff538033),
            number: familyList[index],
          );
        },
      ),
    );
  }
}
