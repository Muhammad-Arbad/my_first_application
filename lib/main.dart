import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp( XyloPhone());
}

class XyloPhone extends StatelessWidget {
    XyloPhone({Key? key}) : super(key: key);

  final List<Color> colors = <Color>[Colors.red,Colors.green,Colors.purple,Colors.blue,Colors.orange,Colors.lightBlue,Colors.yellow];
  Widget createStrips(int index){
    return Expanded(
        child: TextButton(
          child: Text(''),
          onPressed: (){
            final player = AudioCache();
            player.play('assets_note$index.wav');
          },
          style:ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith((states) => colors[index-1])
          ),
        ));
  }



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        body:Container(
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children:[
              for(int i=1;i<=7;i++)
                createStrips(i),
            ],
          ),
        ),
      ),
    );
  }
}