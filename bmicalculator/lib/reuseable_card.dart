import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  Color colour;
  Widget cardWidget;

  ReusableCard({Key? key, required this.colour, required this.cardWidget})
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
