import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  void noteNumber(int number) {
    final player = AudioCache();
    player.play('note$number.wav');
  }

  Expanded buildKey(Color color, int soundNumber, String text) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          noteNumber(soundNumber);
        },
        child: Text(text),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            buildKey(Colors.red.shade900, 1, '1'),
            buildKey(Colors.deepOrange.shade400, 2, '2'),
            buildKey(Colors.yellow.shade400, 3, '3'),
            buildKey(Colors.green, 4, '4'),
            buildKey(Colors.teal, 5, '5'),
            buildKey(Colors.blue.shade900, 6, '6'),
            buildKey(Colors.purple, 7, '7')
          ],
        )),
      ),
    );
  }
}
