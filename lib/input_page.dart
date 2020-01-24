import 'package:bmi_calculator/card_content.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/gender_enum.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  int height = 180;
  int weight = 60;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: CardContent(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.MALE;
                      });
                    },
                    activeColor: selectedGender == Gender.MALE
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    iconData: FontAwesomeIcons.mars,
                    sex: 'MALE',
                  ),
                ),
                Expanded(
                  child: CardContent(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.FEMALE;
                      });
                    },
                    activeColor: selectedGender == Gender.FEMALE
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    iconData: FontAwesomeIcons.venus,
                    sex: 'FEMALE',
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              ownColor: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'HEIGHT',
                    style: kLabelTextStyle,
                  ),
                  Row(
                    textBaseline: TextBaseline.alphabetic,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    children: <Widget>[
                      Text(height.toString(), style: kNumberTextStyle),
                      Text(
                        'cm',
                        style: kLabelTextStyle,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      inactiveTrackColor: Colors.grey,
                      activeTrackColor: Colors.white,
                      thumbColor: Colors.amber,
                      overlayColor: Color(0x25FFDD11),
                      thumbShape: RoundSliderThumbShape(
                          enabledThumbRadius: 15.0, disabledThumbRadius: 6.0),
                      overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 29.0),
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      min: 120,
                      max: 220,
                      onChanged: (double value) {
                        setState(() {
                          height = value.round();
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    ownColor: kActiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'WEIGHT',
                          style: kLabelTextStyle,
                        ),
                        Text(
                          weight.toString(),
                          style: kNumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            FloatingActionButton(
                              backgroundColor: Colors.grey,
                                child: Icon(
                              Icons.add,
                              color: Colors.white,
                            )),
                            SizedBox(
                              width: 10.0,
                            ),
                            FloatingActionButton(
                              backgroundColor: Colors.grey,
                              child: Icon(Icons.remove, color: Colors.white,),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(ownColor: kActiveCardColor),
                ),
              ],
            ),
          ),
          Container(
            height: kBottomContainerHeight,
            color: kBottomContainerColor,
            margin: EdgeInsets.only(top: 10.0),
          )
        ],
      ),
    );
  }
}
