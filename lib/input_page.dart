import 'package:bmi_calculator/card_content.dart';
import 'package:bmi_calculator/gender_enum.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const bottomContainerHeight = 50.0;
const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);
const bottomContainerColor = Colors.amber;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;

  void updateColor(Gender gender){
    if(gender == Gender.MALE){
      maleCardColor = activeCardColor;
      femaleCardColor = inactiveCardColor;
    }else{
      maleCardColor = inactiveCardColor;
      femaleCardColor = activeCardColor;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    child: CardContent(
                      activeColor: maleCardColor,
                      iconData: FontAwesomeIcons.mars,
                      sex: 'MALE',
                    ),
                    onTap: () {
                      setState(() {
                     //   maleCardColor = activeCardColor;
                     //   femaleCardColor = inactiveCardColor;
                        updateColor(Gender.MALE);
                      });
                    },
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    child: CardContent(
                      activeColor: femaleCardColor,
                      iconData: FontAwesomeIcons.venus,
                      sex: 'FEMALE',
                    ),
                    onTap: () {
                      setState(() {
                       // femaleCardColor = activeCardColor;
                      //  maleCardColor = inactiveCardColor;
                        updateColor(Gender.FEMALE);
                      });
                    },
                  ),
                )
              ],
            ),
          ),
          Expanded(child: ReusableCard(ownColor: activeCardColor)),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(child: ReusableCard(ownColor: activeCardColor)),
                Expanded(child: ReusableCard(ownColor: activeCardColor)),
              ],
            ),
          ),
          Container(
            height: bottomContainerHeight,
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 10.0),
          )
        ],
      ),
    );
  }
}




