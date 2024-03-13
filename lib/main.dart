import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() => runApp(
      XylophoneApp(),
    );

class XylophoneApp extends StatelessWidget {
  void playSound(int number) {
    final assetsAudioPlayer = AssetsAudioPlayer();

    assetsAudioPlayer.open(
      Audio("assets/note$number.wav"),
    );
  }

  Widget buildKey({required int number, required Color keyColor}) {
    return Expanded(
      child: Container(
        width: double.infinity,
        color: keyColor,
        child: TextButton(
          onPressed: () {
            playSound(number);
          },
          child: Text(
            '$number',
            style: const TextStyle(color: Colors.white, fontSize: 25),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              buildKey(number: 1, keyColor: Colors.red),
              buildKey(number: 2, keyColor: Colors.orange),
              buildKey(number: 3, keyColor: Colors.yellow),
              buildKey(number: 4, keyColor: Colors.green),
              buildKey(number: 5, keyColor: Colors.blue),
              buildKey(number: 6, keyColor: Colors.indigo),
              buildKey(number: 7, keyColor: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
