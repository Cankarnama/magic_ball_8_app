import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.lightBlue,
            appBar: AppBar(
              title: Text('Ask Me Anything'),
              backgroundColor: Colors.blue[900],
            ),
            body: Magic8ball())),
  );
}

class Magic8ball extends StatefulWidget {
  @override
  _Magic8ballState createState() => _Magic8ballState();
}

class _Magic8ballState extends State<Magic8ball> {
  int bn =1;
  void changeballnumber(){


  }

  @override

  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: () {
          setState(()
          {
            bn = Random().nextInt(4)+1;
          });

        },
        child: Image.asset(
            'images/ball$bn.png'),
      ),
    );
  }
}
