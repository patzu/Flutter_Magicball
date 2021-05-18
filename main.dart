import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: MyApp(),
      ),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int imageNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          child: Image.asset('images/ball$imageNumber.png'),
          onPressed: () {
            setState(
              () {
                imageNumber = Random().nextInt(5) + 1;
              },
            );
          },
          style: ButtonStyle(
            //Overriding TextButton's overlay color.
            overlayColor: MaterialStateProperty.all<Color>(Colors.white),
          ),
        ),
      ],
    );
  }
}
