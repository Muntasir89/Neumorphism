import 'package:flutter/material.dart';
import 'package:neumorphism_widgets/widgets/card/card.dart';
import 'package:neumorphism_widgets/widgets/neu_clock.dart';
import 'package:neumorphism_widgets/widgets/neu_icon_button.dart';
import 'package:neumorphism_widgets/widgets/neu_switch/neu_switch.dart';

import 'widgets/animatedListView/neu_animated_listview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text("Neumorphism Switch"),
      ),
      body: Center(
        child: Column(
          children: [
            // SizedBox(
            //   height: 20,
            // ),
            // NeuCard(),
            // SizedBox(
            //   height: 50,
            // ),
            // NeuIconButton(),
            // SizedBox(
            //   height: 50,
            // ),
            // Clock(),
            SizedBox(
              height: 50,
            ),
            NeuSwitch()
          ],
        ),
      ),
    );
  }
}
