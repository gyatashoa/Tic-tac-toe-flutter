import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Positioned.fill(
          child: Image.asset(
        "assets/images/chess.jpg",
        fit: BoxFit.cover,
      )),
      Positioned.fill(
          child: Container(
        color: Colors.black.withOpacity(0.6),
      )),
    ]);
  }
}
