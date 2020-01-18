import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';

const labelTextStyle = TextStyle(
fontSize: 18.0,
color: Color(0xFF8D8E98),
);

class CardContent extends StatelessWidget {
  final IconData iconData;
  final String sex;
  final Color activeColor;

  CardContent({@required this.iconData, @required this.sex, this.activeColor});

  @override
  Widget build(BuildContext context) {
    return ReusableCard(
      ownColor: this.activeColor,
       // ownColor: activeCardColor,
        cardChild: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(iconData, size: 80.0),
            SizedBox(
              height: 8.0,
            ),
            Text(
              sex,
              style: labelTextStyle,
            ),
          ],
        ));
  }
}