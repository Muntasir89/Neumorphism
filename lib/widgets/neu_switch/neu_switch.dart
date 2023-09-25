import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';

class NeuSwitch extends StatefulWidget {
  const NeuSwitch({super.key});

  @override
  State<NeuSwitch> createState() => _NeuSwitchState();
}

class _NeuSwitchState extends State<NeuSwitch> {
  bool _isActive = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 200,
      color: Colors.grey[300],
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: 44,
            width: 70,
            padding: EdgeInsets.symmetric(horizontal: 2),
            decoration: BoxDecoration(
                color: Color(0xFFE3E3E3),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                      color: Color(0xFFBDBDBD),
                      offset: Offset(2.0, 2.0),
                      blurRadius: 3,
                      spreadRadius: 1.0,
                      inset: true),
                  BoxShadow(
                      color: Color(0xFFFFFFFF),
                      offset: Offset(-2.0, -2.0),
                      blurRadius: 3,
                      spreadRadius: 1.0,
                      inset: true),
                ]),
            alignment: _isActive ? Alignment.centerLeft : Alignment.centerRight,
            child: InkWell(
              onTap: () {
                setState(() {
                  _isActive = !_isActive;
                });
              },
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.white,
                          offset: Offset(2.0, 2.0),
                          blurRadius: 3,
                          spreadRadius: 1.0),
                      BoxShadow(
                          color: Color(0xFF757575),
                          offset: Offset(2.0, 2.0),
                          blurRadius: 3,
                          spreadRadius: 1.0),
                    ]),
              ),
            ),
          )
        ],
      ),
    );
  }
}
