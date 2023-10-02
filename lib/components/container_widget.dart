// ignore_for_file: must_be_immutable, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:language_app/models/item.dart';
import 'package:audioplayers/audioplayers.dart';

// ignore: camel_case_types
class MyContainer extends StatelessWidget {
  MyContainer({super.key, required this.number, required this.color});
  Item number;
  Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 16, top: 12),
      color: color,
      child: Row(
        children: [
          Expanded(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(number.sympol,
                  style: TextStyle(color: Colors.white, fontSize: 18)),
              Text(number.jp,
                  overflow: TextOverflow.ellipsis,
                  softWrap: true,
                  maxLines: 2,
                  style: TextStyle(color: Colors.white, fontSize: 18)),
              SizedBox(
                height: 10,
              ),
              Text(number.en,
                  style: TextStyle(color: Color.fromARGB(255, 83, 41, 13), fontSize: 18)),
            ]),
          ),
          IconButton(
              padding: EdgeInsets.only(right: 6),
              onPressed: () {
                final player = AudioPlayer();
                player.play(AssetSource(number.sound));
              },
              icon: Icon(
                Icons.arrow_right,
                color: Colors.white,
                size: 42,
              ))
        ],
      ),
    );
  }
}
