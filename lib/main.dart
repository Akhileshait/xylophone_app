import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Xyphone());
}

class Xyphone extends StatelessWidget {
  const Xyphone({super.key});

  void sound(int n) async {
    final player = AudioPlayer();
    await player.play(AssetSource('note$n.wav'));
  }

  Expanded buildkey(Color clr, int num) {
    return Expanded(
      child: TextButton(
        onPressed: () async {
          sound(num);
        },
        style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(clr)),
        child: const Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            buildkey(Colors.red, 1),
            buildkey(Colors.orange, 2),
            buildkey(Colors.yellow, 3),
            buildkey(Colors.green, 4),
            buildkey(Colors.blue, 5),
            buildkey(Colors.indigo, 6),
            buildkey(Colors.purple, 7),
          ]),
        ),
      ),
    );
  }
}
