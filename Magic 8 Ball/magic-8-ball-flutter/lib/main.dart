import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          title: Center(
            child: Text('Ask Me Anything'),
          ),
        ),
        body: ballPage(),
      ),
    ),
  );
}

class ballPage extends StatefulWidget {
  @override
  _ballPageState createState() => _ballPageState();
}

class _ballPageState extends State<ballPage> {
  int ballFace = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Center(
            child: TextButton(
              onPressed: () {
                setState(() {
                  ballFace = Random().nextInt(5) + 1;//1-5
                });
              },
              child: Image.asset('images/ball$ballFace.png'),
            ),
          ),
        ),
      ],
    );
  }
}


