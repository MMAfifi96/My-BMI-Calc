import 'package:flutter/material.dart';
import 'bmi_result.dart';
import 'bmi_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false, //to remove the debug banner in the top right corner
      home: BmiScreen(),
    );
  }
}