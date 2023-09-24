import 'package:flutter/material.dart';

class NeuIconButton extends StatefulWidget {
  @override
  State<NeuIconButton> createState() => _NeuIconButtonState();
}

class _NeuIconButtonState extends State<NeuIconButton> {
  bool _isElevated = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isElevated = !_isElevated;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 250),
        decoration: BoxDecoration(
            color: Colors.grey[300],
            shape: BoxShape.circle,
            boxShadow: _isElevated
                ? [
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
                  ]
                : null),
        child: Center(
          child: SizedBox(
            height: 40,
            width: 40,
            child: Icon(
              Icons.more_vert,
              size: 20,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
