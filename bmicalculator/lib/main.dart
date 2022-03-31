import 'package:bmicalculator/results_page.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

void main() {
  runApp(const BmiCalculator());
}

class BmiCalculator extends StatelessWidget {
  const BmiCalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: const Color(0xff0a0e21),
        scaffoldBackgroundColor: const Color(0xff0a0e21),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xaa120e21),
        ),
      ),
      routes: {
        '/': (context) => HomePage(),
        '/resultPage': (context) => ResultsPage(),
      },
    );
  }
}
