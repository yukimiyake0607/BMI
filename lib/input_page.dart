// import
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

// 変数
enum Gender {
  male,
  female,
}

// class(InputPage)
class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? genderSelected;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        genderSelected = Gender.male;
                      });
                    },
                    color: genderSelected == Gender.male
                        ? kActiveReusableCardColor
                        : kInactiveReusableCardColor,
                    cardChild: IconContent(
                        icon: FontAwesomeIcons.mars, gender: 'MALE'),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        genderSelected = Gender.female;
                      });
                    },
                    color: genderSelected == Gender.female
                        ? kActiveReusableCardColor
                        : kInactiveReusableCardColor,
                    cardChild: IconContent(
                        icon: FontAwesomeIcons.venus, gender: 'FEMALE'),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              color: kActiveReusableCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('HEIGHT', style: kLabelTextstyle),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        '170',
                        style: kNumberTextstyle,
                      ),
                      Text('cm', style: kLabelTextstyle),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(child: ReusableCard(color: kActiveReusableCardColor)),
                Expanded(child: ReusableCard(color: kActiveReusableCardColor)),
              ],
            ),
          ),
          Container(
            color: kBottomContainerColor,
            width: double.infinity,
            height: kBottomContainerHeight,
            margin: EdgeInsets.only(top: 10.0),
          ),
        ],
      ),
    );
  }
}
