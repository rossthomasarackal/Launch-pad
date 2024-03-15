import 'dart:math';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';



class DashatarHome extends StatefulWidget {
  const DashatarHome({super.key});
  @override
  State<DashatarHome> createState() => _DashatarHomeState();
}

class _DashatarHomeState extends State<DashatarHome> {
  List<Color> colors= [Colors.redAccent, Colors.yellowAccent, Colors.teal, Colors.pinkAccent,Colors.blueAccent, Colors.orangeAccent,Colors.greenAccent];
  int appbar=3;
  int scaffold=1;
  Random random= new Random();
  List sound=['Kick.wav','Ride.wav', 'Snare.wav', 'Tom.wav'];
  int position=0;
  final player=AudioPlayer();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("",
            style: TextStyle(
                color: Colors.cyanAccent,
                fontSize: 20,
                fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: colors[appbar],
      ),
      backgroundColor:colors[scaffold],
      body: MaterialButton(
        onPressed: (){
          setState(() {
            player.play(AssetSource(sound[position]));
            position=random.nextInt(4);
            do{
              appbar=random.nextInt(7);
              scaffold=random.nextInt(7);
            }while (appbar==scaffold);

          });
        },
          child: Image.asset("images/dash.png")),
    );
  }
}
