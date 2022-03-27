import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const double kBottomContainerHeight = 80;
const Color kActiveCardColor = Color(0xff1e1d33);
const Color kInActiveCardColor = Color(0xff111328);
const kBottomContainerColour = Color(0xffef1555);
const kMaleIcon = Icon(
  FontAwesomeIcons.mars,
  size: 80,
);
const kFemaleIcon = Icon(
  FontAwesomeIcons.venus,
  size: 80,
);
const kMaleText = Text(
  "MALE",
  style: kTextStyle,
);

const kTextStyle = TextStyle(
  color: Color(0xff8d8e98),
  fontSize: 20,
);
const kFemaleText = Text(
  "FEMALE",
  style: kTextStyle,
);
const kBigNumberBoldText =
    TextStyle(fontSize: 50.0, fontWeight: FontWeight.w900);
