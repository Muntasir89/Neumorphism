import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';

class NeuSwitch extends StatelessWidget {
  bool _isActive = false;

  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(builder: (BuildContext context, changePosition) {
      return InkWell(
        onTap: () {
          changePosition(() {
            _isActive = !_isActive;
          });
        },
        child: Container(
          height: 44,
          width: 70,
          padding: EdgeInsets.symmetric(horizontal: 2),
          decoration: BoxDecoration(
              color: _isActive ? Colors.red : Color(0xFFE3E3E3),
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
          alignment: _isActive ? Alignment.centerRight : Alignment.centerLeft,
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
      );
    });
  }
}
