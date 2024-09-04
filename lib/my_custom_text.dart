import 'package:flutter/material.dart';

Widget? myCustomText(String? msg) {
  return Text(
    msg!,
    style: TextStyle(
      color: const Color.fromARGB(255, 58, 2, 11),
      fontSize: 25,
      fontWeight: FontWeight.w800,
      fontStyle: FontStyle.italic,
      height: -3.0,
      /* shadows: const [
        Shadow(
            color: Color.fromARGB(210, 126, 82, 176),
            blurRadius: 15,
            offset: Offset(1, 5)),
        Shadow(
            color: Color.fromARGB(210, 108, 230, 163),
            blurRadius: 10,
            offset: Offset(3, 5)),
        Shadow(
            color: Color.fromARGB(210, 232, 154, 232),
            blurRadius: 20,
            offset: Offset(7, 5))
      ],*/
      decoration: TextDecoration.combine([TextDecoration.overline]),
      decorationColor: Colors.black,
      decorationStyle: TextDecorationStyle.dashed,
      decorationThickness: 4,
    ),
  );
}
