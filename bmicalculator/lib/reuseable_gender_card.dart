import 'package:bmicalculator/reuseable_card.dart';
import 'package:flutter/material.dart';
import 'home_page.dart';

ReusableCard genderCard(
    {required Color colour,
    required Icon genderIcon,
    required Text genderText}) {
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
    colour: colour,
  );
}
