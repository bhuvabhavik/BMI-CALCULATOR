import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

const double bottomContainerHeight = 80;
const Color activeCardColor = Color(0xff1e1d33);
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

class _HomePageState extends State<HomePage> {
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
                        child: genderCard(
                            genderIcon: maleIcon, genderText: maleText),
                      ),
                      Expanded(
                        child: genderCard(
                            genderIcon: femaleIcon, genderText: femaleText),
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

  ReusableCard genderCard(
      {required Icon genderIcon, required Text genderText}) {
    return ReusableCard(
      cardWidget: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          genderIcon,
          SizedBox(
            height: 15,
          ),
          genderText
        ],
      ),
      colour: activeCardColor,
    );
  }
}

class ReusableCard extends StatelessWidget {
  final Color colour;
  final Widget cardWidget;

  const ReusableCard({Key? key, required this.colour, required this.cardWidget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardWidget,
      margin: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(25),
      ),
    );
  }
}
