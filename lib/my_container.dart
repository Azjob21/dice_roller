import 'dart:developer';

import 'package:flutter/material.dart';
import 'my_custom_text.dart';

class MyContainer extends StatelessWidget {
  final List<Color> colors;

  const MyContainer({
    Key? key,
    required this.colors,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: colors,
            begin: Alignment.topLeft,
            end: Alignment.bottomRight),
      ),
      child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "images/dice-1.png",
                width: 100,
                height: 100,
              ),
              Image.asset(
                "images/dice-2.png",
                width: 100,
                height: 100,
              ),
              Image.asset(
                "images/dice-3.png",
                width: 100,
                height: 100,
              ),
              OutlinedButton.icon(
                label: const Text("click me"),
                icon: const Icon(Icons.add),
                onPressed: () {
                  log("clicked");
                },
              ),
            ],
          )),
    );
  }
}
