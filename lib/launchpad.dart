import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class Launch extends StatefulWidget {
  const Launch({super.key});

  @override
  State<Launch> createState() => _LaunchState();
}

class _LaunchState extends State<Launch> {
  List sound=['Kick.wav','Ride.wav', 'Snare.wav', 'Tom.wav'];
  int selectedIndex1=-1;
  int selectedIndex2=-1;
  int selectedIndex3=-1;
  int selectedIndex4=-1;
  Color first=Colors.teal;
  final player=AudioPlayer();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Launch Pad'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                for(int i=0;i<=7;i++)
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        selectedIndex1=i;
                        player.play(AssetSource(sound[0]));
                      });
                      Duration duration=Duration(milliseconds: 200);
                      Future.delayed(duration,(){
                      setState(() {
                        selectedIndex1=-1;
                      });
                      });
                    },
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                          border: Border.all(width: 4, color: Colors.black),
                          borderRadius: BorderRadius.circular(10),
                          gradient:selectedIndex1==i
                              ?RadialGradient(
                              center: Alignment.center,
                              colors: [Colors.white, Colors.white])
                         : RadialGradient(
                              center: Alignment.center,
                              colors: [Colors.white, Colors.teal]),
                      ),
                    ),
                  ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                for(int j=0;j<=7;j++)
                  GestureDetector(

                    onTap: (){
                      setState(() {
                        selectedIndex2=j;
                        player.play(AssetSource(sound[1]));
                      });
                      Duration duration=Duration(milliseconds: 200);
                      Future.delayed(duration,(){
                        setState(() {
                          selectedIndex2=-1;
                        });
                      });
                    },
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                          border: Border.all(width: 4, color: Colors.black),
                          borderRadius: BorderRadius.circular(10),
                        gradient:selectedIndex2==j
                            ?RadialGradient(
                            center: Alignment.center,
                            colors: [Colors.white, Colors.white])
                            : RadialGradient(
                            center: Alignment.center,
                            colors: [Colors.white, Colors.pink]),),
                    ),
                  ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                for(int k=0;k<=7;k++)
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        selectedIndex3=k;
                        player.play(AssetSource(sound[2]));
                      });
                      Duration duration=Duration(milliseconds: 200);
                      Future.delayed(duration,(){
                        setState(() {
                          selectedIndex3=-1;
                        });
                      });
                    },
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                          border: Border.all(width: 4, color: Colors.black),
                          borderRadius: BorderRadius.circular(10),
                        gradient:selectedIndex3==k
                            ?RadialGradient(
                            center: Alignment.center,
                            colors: [Colors.white, Colors.white])
                            : RadialGradient(
                            center: Alignment.center,
                            colors: [Colors.white, Colors.green]),),
                    ),
                  ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                for(int l=0;l<=7;l++)
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        selectedIndex4=l;
                        player.play(AssetSource(sound[3]));
                      });
                      Duration duration=Duration(milliseconds: 200);
                      Future.delayed(duration,(){
                        setState(() {
                          selectedIndex4=-1;
                        });
                      });
                    },
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                          border: Border.all(width: 4, color: Colors.black),
                          borderRadius: BorderRadius.circular(10),
                        gradient:selectedIndex4==l
                            ?RadialGradient(
                            center: Alignment.center,
                            colors: [Colors.white, Colors.white])
                            : RadialGradient(
                            center: Alignment.center,
                            colors: [Colors.white, Colors.deepOrange]),),
                    ),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
  // void select(int index){
  //    setState(() {
  //      selectedIndex=index;
  //    });
  //    Duration duration=
  // }
}
