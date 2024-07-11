import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(const Xylophone());
}

void soundNote(int noteNumber){
final assetsAudioPlayer = AssetsAudioPlayer();
    assetsAudioPlayer.open(
    Audio('assets/note$noteNumber.wav'),
);  
}

Expanded buildKey(Color backgroundColor,int noteNumber){
  return Expanded(
    child:TextButton(
      style: TextButton.styleFrom(
              foregroundColor: Colors.transparent,
              backgroundColor: backgroundColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0)
              )
            ),
        onPressed: () { 
        soundNote(noteNumber);
       }, 
      child: const Text(''),  
    ) );
}

class Xylophone extends StatelessWidget {
  const Xylophone({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
        backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          buildKey(Colors.purple,1),
          buildKey(Colors.indigo,2),
          buildKey(Colors.blue,3),
          buildKey(Colors.green,4),
          buildKey(Colors.yellow,5),
          buildKey(Colors.orange,6),
          buildKey(Colors.red,7),
        ],
      )),
    ));
  }
}
