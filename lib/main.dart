import 'package:bmi_calculator/screens/result_page.dart';
import 'package:flutter/material.dart';
import 'screens/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xFF1D2135),
        ),
        scaffoldBackgroundColor: Color(0xFF1D2135),
      ),
      routes: {
        '/':(context) => InputPage(),
        '/calculator':(context) => ResultPage(),
      },
    );
  }
}
