import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {

  BottomButton({ @required this.onTap,@required this.buttonTitle});

  final Function onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.only(bottom: 10.0),
        child: Center(child: Text(buttonTitle, style: kLargeButtonStyle,)),
        height: kBottomContainerHeight,
        color: kBottomContainerColor,
          margin: EdgeInsets.only(top: 10.0),
      ),
    );
  }
}