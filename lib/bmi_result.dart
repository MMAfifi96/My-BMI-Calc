import 'package:bmi_calculator/bmi_screen.dart';
import 'package:flutter/material.dart';

class BmiResult extends StatelessWidget {
  //const BmiResult({Key? key}) : super(key: key);

  @required
  final int result;
  @required
  final int age;
  @required
  final int weight;
  @required
  final bool isMale;
  @required
  final double height;

  BmiResult({
    required this.result,
    required this.weight,
    required this.age,
    required this.isMale,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text('BMI CALCULATOR'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Your Result is : $result',
                style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
            Text('Your Gender is : ${isMale ? 'Male' : 'Female'}',
                style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
            Text('Your Age is : $age',
                style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
            Text('Your Height is : ${height.round()}',
                style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
            Text('Your Ideal Weight Should Be : ${height.round()-95}',
                style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
