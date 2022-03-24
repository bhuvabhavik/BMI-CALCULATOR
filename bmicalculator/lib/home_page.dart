import 'package:bmicalculator/reuseable_gender_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reuseable_card.dart';

const double bottomContainerHeight = 80;
const Color activeCardColor = Color(0xff1e1d33);
const Color inActiveCardColor = Color(0xff111328);
const bottomContainerColour = Color(0xffef1555);
const maleIcon = Icon(
  FontAwesomeIcons.mars,
  size: 80,
);
const femaleIcon = Icon(
  FontAwesomeIcons.venus,
  size: 80,
);
const maleText = Text(
  "MALE",
  style: TextStyle(color: Color(0xff8d8e98), fontSize: 20),
);
const femaleText =
    Text("FEMALE", style: TextStyle(color: Color(0xff8d8e98), fontSize: 20));

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color maleCardColor = inActiveCardColor;
  Color femaleCardColor = inActiveCardColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: const Text("BMI CALCULATOR")),
        backgroundColor: Color(0xaa120e21),
      ),
      body: Column(
        children: [
          Expanded(
            child: Column(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              updateState(1);
                            });
                          },
                          child: genderCard(
                              colour: maleCardColor,
                              genderIcon: maleIcon,
                              genderText: maleText),
                        ),
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              updateState(2);
                            });
                          },
                          child: genderCard(
                              colour: femaleCardColor,
                              genderIcon: femaleIcon,
                              genderText: femaleText),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(colour: activeCardColor, cardWidget: Column()),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    cardWidget: Column(),
                    colour: activeCardColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    cardWidget: Column(),
                    colour: activeCardColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: bottomContainerHeight,
            width: double.infinity,
            child: const Center(
              child: Text(
                "Calculate",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
            ),
            color: bottomContainerColour,
          )
        ],
      ),
    );
  }

  void updateState(int x) {
    if (x == 1) {
      maleCardColor = activeCardColor;
      femaleCardColor = inActiveCardColor;
    } else {
      maleCardColor = inActiveCardColor;
      femaleCardColor = activeCardColor;
    }
    if (x == 2) {
      femaleCardColor = activeCardColor;
      maleCardColor = inActiveCardColor;
    } else {
      femaleCardColor = inActiveCardColor;
      maleCardColor = activeCardColor;
    }
  }
}
