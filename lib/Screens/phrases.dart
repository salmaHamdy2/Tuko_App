import 'package:flutter/material.dart';
import 'package:language_app/components/my_data.dart';
import 'package:language_app/components/phrase_widget.dart';

class PhrasesScreen extends StatelessWidget {
  const PhrasesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff463029),
        title: const Text(
          "Phrases",
          style: TextStyle(fontSize: 24),
        ),
      ),
      body: ListView.builder(
        itemCount: phraseslist.length,
        itemBuilder: (context, index) {
          return phrasewidget(
            color: const Color(0xff48A5CC),
            number: phraseslist[index],
          );
        },
      ),
    );
  }
}
