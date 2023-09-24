import 'package:flutter/material.dart';

class Clock extends StatefulWidget {
  const Clock({super.key});

  @override
  State<Clock> createState() => _ClockState();
}

class _ClockState extends State<Clock> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 300,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xFFECF6FF),
                      Color(0xFFCADBEB),
                    ]),
                boxShadow: [
                  BoxShadow(
                      color: Color(0xFF3F6080).withOpacity(0.2),
                      blurRadius: 32,
                      offset: Offset(40, 20)),
                  BoxShadow(
                      color: Color(0xFFFFFFFF),
                      blurRadius: 32,
                      offset: Offset(-20, -10))
                ]),
          ),
          Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xFFECF6FF),
                      Color(0xFFCADBEB),
                    ]),
                boxShadow: [
                  BoxShadow(
                      color: Color(0xFF3F6080).withOpacity(0.2),
                      blurRadius: 32,
                      offset: Offset(40, 20)),
                  BoxShadow(
                      color: Color(0xFFFFFFFF),
                      blurRadius: 32,
                      offset: Offset(-20, -10))
                ]),
          )
        ],
      ),
    );
  }
}
