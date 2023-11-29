import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const XylophoneApp());

Expanded keys(backgroundColor,int A){
  return Expanded(
    child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: const BeveledRectangleBorder(borderRadius: BorderRadius.zero),
        ),
        onPressed: (){
          final player = AudioPlayer();
          player.play(AssetSource('note$A.wav'));
        },
        child: Container(
        )),
  );
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              keys(Colors.red, 1),
              keys(Colors.orange, 2),
              keys(Colors.yellow, 3),
              keys(Colors.green, 4),
              keys(Colors.teal, 5),
              keys(Colors.blue, 6),
              keys(Colors.indigo, 7),
            ],
          ),
        ),
      ),
    );
  }
}