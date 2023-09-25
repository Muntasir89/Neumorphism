import 'package:flutter/material.dart';

class NeuCard extends StatelessWidget {
  const NeuCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment(-1, -1),
      height: 300,
      width: 300,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade500,
                offset: Offset(4.0, 4.0),
                blurRadius: 15.0,
                spreadRadius: 1.0),
            BoxShadow(
                color: Colors.white,
                offset: Offset(-4.0, -4.0),
                blurRadius: 15.0,
                spreadRadius: 1.0),
          ]),
    );
  }
}
