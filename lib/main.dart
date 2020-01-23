import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MaterialApp(
  home: EightBall(),
));

class EightBall extends StatefulWidget {
  @override
  _EightBallState createState() => _EightBallState();
}

class _EightBallState extends State<EightBall> {
   int eight = 2;
      void rightClicked() {
        eight = Random().nextInt(5) + 1;
      }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        title: Text('Ask Me Anything'),
        centerTitle: true,
      ),
      body:
       Column(
        children: <Widget>[
          Expanded(
            child:
             FlatButton(
               onPressed: (){
                setState(() {
                  rightClicked();
                });
               },
               child: Image.asset('images/ball$eight.png'))),
        ],
        ),
    );
}}


