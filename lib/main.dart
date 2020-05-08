import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('Ask Me Anything'),
        backgroundColor: Colors.blue[900],
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNum = 0;

  void shakeBall() {
    setState(() {
      ballNum = 0;
    });

    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        ballNum = Random().nextInt(5) + 1;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: () {
          shakeBall();
        },
        child: Image.asset('images/ball$ballNum.png'),
      ),
    );
  }
}
