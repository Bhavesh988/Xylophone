import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
void main() => runApp(XylophoneApp());


class XylophoneApp extends StatelessWidget {
  void sound(int s){
    final player = AudioCache();
    player.play('note$s.wav');
  }

  Container builder(Color st,int i){
     return Container(
        child:Expanded(
          child: FlatButton(
            color: st,
            onPressed: (){
              sound(i);
            },
          ),
        ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: Center(
              child: Text('Xylophone'),
          ),
        ),
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              builder(Colors.red,1),
              builder(Colors.orange,2),
              builder(Colors.yellow,3),
              builder(Colors.green,4),
              builder(Colors.blue,5),
              builder(Colors.purple,6),
              builder(Colors.grey,7),
            ],
          ),
        ),
      ),
    );
  }
}