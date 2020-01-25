import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color ownColor;
  final Widget cardChild;

  ReusableCard({@required this.ownColor, this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: ownColor,
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}