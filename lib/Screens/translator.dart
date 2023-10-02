// ignore_for_file: must_be_immutable, avoid_print

import 'package:flutter/material.dart';
import 'package:translator/translator.dart';

class Translator extends StatefulWidget {
  const Translator({super.key});

  @override
  State<Translator> createState() => _TranslatorState();
}

class _TranslatorState extends State<Translator> {
  GoogleTranslator translator = GoogleTranslator();
  TextEditingController textfield = TextEditingController();

  var txt = "";

  void translation() {
    txt = textfield.text;
    translator.translate(txt, from: 'en', to: "ja").then((value) {
      setState(() {
        txt = value.toString();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEEEBD6),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 211, 80, 124),
        title: const Text(
          "Translator",
          style: TextStyle(fontSize: 24),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            TextField(
              style: const TextStyle(fontSize: 20),
              controller: textfield,
              decoration: const InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      width: 1, color: Color.fromARGB(255, 211, 80, 124)),
                ),
                contentPadding: EdgeInsets.only(left: 15),
                hintText: "abc",
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 211, 80, 124),
                ),
                onPressed: () {
                  translation();
                },
                child: const Text(
                  "Translate",
                  style: TextStyle(fontSize: 17),
                )),
            const SizedBox(
              height: 30,
            ),
            Text(
              txt,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
            ),
          ],
        ),
      ),
    );
  }
}
