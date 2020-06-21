import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Xylophone());
}

class Xylophone extends StatelessWidget {

  void note(int number) {
    final player = AudioCache();
    player.play('note$number.wav');
  }

  Expanded noteButton({Color color,int noteNumber}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          note(noteNumber);
        },
        color: color,
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              noteButton(color: Colors.red, noteNumber: 1),
              noteButton(color: Colors.orange, noteNumber: 2),
              noteButton(color: Colors.yellow, noteNumber: 3),
              noteButton(color: Colors.blue, noteNumber: 4),
              noteButton(color: Colors.green, noteNumber: 5),
              noteButton(color: Colors.teal, noteNumber: 6),
              noteButton(color: Colors.purple, noteNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
