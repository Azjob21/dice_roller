import 'package:flutter/material.dart';
import 'my_container.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        // backgroundColor: Colors.cyan[200],
        body: MyContainer(colors: [
          Colors.blue,
          Colors.green,
          Colors.yellow,
        ]),
      ),
    ),
  );
}
