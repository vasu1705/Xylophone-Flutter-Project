import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(app());

class app extends StatelessWidget{
  //var but=button();
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Xylophone',
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(title: Text('Xylophone',style:TextStyle(fontSize: 20,),),backgroundColor: Colors.purple,),
          body: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                bkey(Colors.blue,1),
                bkey(Colors.red,2),
                bkey(Colors.purple,3),
                bkey(Colors.pink,4),
                bkey(Colors.deepOrangeAccent,5),
                bkey(Colors.amber,6),
                bkey(Colors.purple[900],7),
              ],
            ),
          ),
        ),
      ),
    );
  }
  Expanded bkey(col,no){
    return Expanded(
      child: FlatButton(color: col,onPressed: (){
        final audiocahe=AudioCache();
        audiocahe.play('note$no.wav');
      },),
    );
  }
}

