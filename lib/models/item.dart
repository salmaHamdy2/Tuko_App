import 'package:audioplayers/audioplayers.dart';

class Item {
  Item(
      {this.img,
      required this.sound,
      required this.en,
      required this.jp,
      required this.sympol});
  String? img;
  String sound;
  String en;
  String jp;
  String sympol;
  void playSound() {
    final player = AudioPlayer();
    player.play(AssetSource(sound));
  }
}
