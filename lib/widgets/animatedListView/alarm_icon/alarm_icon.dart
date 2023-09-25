import 'package:flutter/material.dart';

class AlarmIcon extends StatelessWidget {
  bool alarmActive = false;

  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(builder: (context, setAlarm) {
      return IconButton(
          onPressed: () {
            setAlarm(() {
              alarmActive = !alarmActive;
            });
          },
          icon: Icon(alarmActive
              ? Icons.notifications_active_outlined
              : Icons.notifications_off_outlined));
    });
  }
}
