import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(BallPage());

}

class BallPage extends StatelessWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold (
        backgroundColor: Colors.lightBlueAccent,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Center (
            child: Text('Ask Me Anything',
              style: TextStyle(
                fontFamily: 'Alkatra',
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        body: Center(
         child: Ball(),
        ),
      ),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {

  int ballNumber=1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
          children:[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child:TextButton(
                  onPressed: () {
                    setState(() {
                      randomize();
                    });
                    print('Ball $ballNumber is pressed');
                  },
                  child: Image.asset(
                    'images/ball$ballNumber.png',
                  ),
                ),
              ),
            ),
          ],
      ),
    );
  }

  void randomize(){
     ballNumber = Random().nextInt(5)+1;
  }
}

