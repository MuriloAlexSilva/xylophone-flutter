import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void playSound(int numberSound) {
    final player = AudioCache(prefix: "assets/sounds/");
    player.play("note$numberSound.wav");
  }

  Expanded buttomCustom(int number, Color color) {
    //Sempre que for criar uma função, deverá colocar o nome do widget antes do nome da função e sempre colocar após um return
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(number);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          //Seria para ocupar toda a tela na direção width
          children: [
            buttomCustom(1, Colors.red),
            buttomCustom(2, Colors.orange),
            buttomCustom(3, Colors.yellow),
            buttomCustom(4, Colors.green),
            buttomCustom(5, Colors.teal),
            buttomCustom(6, Colors.blue),
            buttomCustom(7, Colors.purple),
          ],
        ),
      ),
    );
  }
}
