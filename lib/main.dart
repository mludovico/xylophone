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

  void playSound({int soundNumber}){
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Widget key({Color color, int soundNumber, String note}){
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: (){
          playSound(soundNumber: soundNumber);
        },
        child: Center(
          child: Text(
            note,
            style: TextStyle(
              color: Colors.white,
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
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
          note: 'C',
        ),
        key(
          color: Colors.orange,
          soundNumber: 2,
          note: 'D',
        ),
        key(
          color: Colors.yellow,
          soundNumber: 3,
          note: 'E',
        ),
        key(
          color: Colors.green,
          soundNumber: 4,
          note: 'F',
        ),
        key(
          color: Colors.blue,
          soundNumber: 5,
          note: 'G',
        ),
        key(
          color: Colors.indigo,
          soundNumber: 6,
          note: 'A',
        ),
        key(
          color: Colors.purple,
          soundNumber: 7,
          note: 'B',
        ),
      ],
    );
  }
}
