import 'package:flutter/material.dart';
import 'screens/InputPage.dart';
import './Constant/Constant.dart';
import 'screens/results.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        sliderTheme: SliderTheme.of(context).copyWith(
            inactiveTrackColor: kSliderInActiveColor,
            activeTrackColor: Colors.white,
            overlayColor: kOverlayColor,
            thumbShape: RoundSliderThumbShape(
              enabledThumbRadius: 20,
            ),
            overlayShape: RoundSliderOverlayShape(
              overlayRadius: 35,
            ),
            thumbColor: kThumpColor),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => InputPage(),
        '/result': (context) => Results()
      },
    );
  }
}
