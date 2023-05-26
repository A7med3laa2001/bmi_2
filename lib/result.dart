import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result({
    Key? key,
    required this.result,
    required this.isMale,
    required this.age,
  }) : super(key: key);

  final double result;
  final bool isMale;
  final int age;

  String get resultPhrase{
    String resultText = '';
    if (result >= 30) {
      resultText = 'Obese';
    } else if (result > 25 && result <30) {
      resultText = 'Over Weight';
    } else if (result > 18.5 && result <24.9) {
      resultText = 'Normal';
    } else {
      resultText = 'Thin';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Result"),
      ),
      body: SafeArea(
        child: Center(
          child: DefaultTextStyle(
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 25 ),textAlign: TextAlign.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Gender : ${isMale ? 'Male' : 'Female'}",
                ),
                Text(
                  "Healthiness : $resultPhrase",
                ),
                Text(
                  "Result : ${result.toStringAsFixed(2)}",
                ),
                Text(
                  "Age : $age",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
