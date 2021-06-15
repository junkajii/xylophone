import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded XyloKey({required int soundNumber, required Color color}) {
    return Expanded(
      child: Material(
        color: color,
        child: InkWell(
          onTap: () {
            playSound(soundNumber);
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                XyloKey(soundNumber: 1, color: Colors.red),
                XyloKey(soundNumber: 2, color: Colors.orange),
                XyloKey(soundNumber: 3, color: Colors.yellow),
                XyloKey(soundNumber: 4, color: Colors.green),
                XyloKey(soundNumber: 5, color: Colors.teal),
                XyloKey(soundNumber: 6, color: Colors.blue),
                XyloKey(soundNumber: 7, color: Colors.purple),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
