import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  void playSound({String soundFileName}){
    print('Play $soundFileName');
    final player = AudioCache();
    player.play(soundFileName);
  }

  Widget key({Color color, int soundNumber}){
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: (){
          playSound(soundFileName: 'note$soundNumber.wav');
        },
      ),
    );
}

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        key(
          color: Colors.red,
          soundNumber: 1,
        ),
        key(
          color: Colors.orange,
          soundNumber: 2,
        ),
        key(
          color: Colors.yellow,
          soundNumber: 3,
        ),
        key(
          color: Colors.green,
          soundNumber: 4,
        ),
        key(
          color: Colors.blue,
          soundNumber: 5,
        ),
        key(
          color: Colors.indigo,
          soundNumber: 6,
        ),
        key(
          color: Colors.purple,
          soundNumber: 7,
        ),
      ],
    );
  }
}
