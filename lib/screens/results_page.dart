import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {

  ResultsPage({ @required this.bmiResult,@required this.interpretation,@required this.resultText});

  final String bmiResult;
  final String resultText;
  final String interpretation;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.only(top: 20.0, left: 20.0),
              child: Text('YOUR RESULTS', style: kNumberTextStyle,),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              ownColor: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(resultText.toUpperCase(), style: kResultTextStyle,),
                  Text(bmiResult, style: kBMITextStyle,),
                  Text(interpretation, style: kBMIBodyTextStyle,
                  textAlign: TextAlign.center,)
                ],
              ),
            ),
          ),
          BottomButton(
            onTap: (){
              Navigator.pushNamed(context, '/');
            }, buttonTitle: 'RE-CALCULATE',
          ),
        ],
      ),
    );
  }
}
