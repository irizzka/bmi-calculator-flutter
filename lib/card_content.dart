import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';



class CardContent extends StatelessWidget {
  final IconData iconData;
  final String sex;
  final Color activeColor;
  final Function onPress;

  CardContent({@required this.iconData, @required this.sex, this.activeColor, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: ReusableCard(
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
              style: kLabelTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}
