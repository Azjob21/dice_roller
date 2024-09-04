import 'dart:developer';
import 'dart:math';
import 'package:flutter/material.dart';

class MyContainer extends StatefulWidget {
  final List<Color> colors;

  MyContainer({
    super.key,
    required this.colors,
  });

  @override
  State<MyContainer> createState() => _MyContainerState();
}

class _MyContainerState extends State<MyContainer> {
  var image = Image.asset(
    "images/dice-1.png",
    width: 100,
    height: 100,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: widget.colors,
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
              image,
              const SizedBox(
                height: 40,
              ),
              OutlinedButton.icon(
                style: OutlinedButton.styleFrom(
                  foregroundColor: const Color.fromARGB(255, 0, 0, 0),
                  backgroundColor: const Color.fromARGB(255, 52, 205, 225),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  textStyle: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                label: const Text("Roll Dice"),
                icon: const Icon(Icons.casino),
                onPressed: () {
                  rollDice();
                },
              ),
            ],
          )),
    );
  }

  void rollDice() {
    var random = Random().nextInt(6) + 1;
    setState(() {
      image = Image.asset(
        "images/dice-$random.png",
        width: 100,
        height: 100,
      );
    });
  }
}
