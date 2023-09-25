import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:neumorphism_widgets/widgets/animatedListView/neu_animated_listview.dart';

class NeuSwitch extends StatelessWidget {
  bool _isActive = false;
  NeuAnimatedListView neuAnimatedListView = NeuAnimatedListView();

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
          height: 24,
          width: 45,
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
          child: AnimatedAlign(
            alignment: _isActive ? Alignment.centerRight : Alignment.centerLeft,
            duration: const Duration(seconds: 1),
            curve: Curves.fastOutSlowIn,
            child: Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                  color: Colors.white,
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
          ), //_isActive ? Alignment.centerRight : Alignment.centerLeft
        ),
      );
    });
  }
}
