import 'package:bmicalculator/constants.dart';
import 'package:flutter/material.dart';
import 'main.dart';
import 'constants.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {required this.bmiResult,
      required this.interpretation,
      required this.resultText});

  late final String bmiResult;
  late final String resultText;
  late final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color(0xaa120e21),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              ' Your Result!',
              style: kBigNumberBoldText,
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  color: kActiveCardColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Center(
                          child: Text(
                        bmiResult,
                        style:
                            TextStyle(color: Colors.greenAccent, fontSize: 25),
                      )),
                      Center(
                        child: Text(
                          resultText,
                          style: TextStyle(
                              fontSize: 80, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Center(
                        child: Text(
                          interpretation,
                          style: TextStyle(fontSize: 16),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/');
              },
              child: Container(
                margin: EdgeInsets.all(0),
                alignment: Alignment.bottomCenter,
                color: kBottomContainerColour,
                child: Center(
                  child: Text('RE-CALCULATE',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 25,
                      )),
                ),
                height: kBottomContainerHeight,
                width: double.infinity,
              ),
            )
          ],
        ),
      ),
    );
  }
}
