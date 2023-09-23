import 'package:flutter/material.dart';

class NeuIconButton extends StatelessWidget {
  // bool _isElevated = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment(-1, -1),
      decoration: BoxDecoration(
          color: Colors.grey[300],
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade600,
                offset: Offset(5, 5),
                blurRadius: 15,
                spreadRadius: 1),
            BoxShadow(
                color: Colors.white,
                offset: Offset(-5, -5),
                blurRadius: 15,
                spreadRadius: 1)
          ]),
      child: Center(
        child: SizedBox(
          height: 60,
          width: 60,
          child: Icon(
            Icons.more_vert,
            size: 20,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
