// import
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

// 変数
const Color activeReusableCardColor = Color(0xFF323244);
const Color inactiveReusableCardColor = Color(0xFF23263A);
const bottomContainerColor = Color(0xFFEB1555);
const bottomContainerHeight = 80.0;

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
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    color: genderSelected == Gender.male
                        ? activeReusableCardColor
                        : inactiveReusableCardColor,
                    cardChild: IconContent(
                        icon: FontAwesomeIcons.mars, gender: 'MALE'),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: genderSelected == Gender.female
                        ? activeReusableCardColor
                        : inactiveReusableCardColor,
                    cardChild: IconContent(
                        icon: FontAwesomeIcons.venus, gender: 'FEMALE'),
                  ),
                ),
              ],
            ),
          ),
          Expanded(child: ReusableCard(color: activeReusableCardColor)),
          Expanded(
            child: Row(
              children: [
                Expanded(child: ReusableCard(color: activeReusableCardColor)),
                Expanded(child: ReusableCard(color: activeReusableCardColor)),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            width: double.infinity,
            height: bottomContainerHeight,
            margin: EdgeInsets.only(top: 10.0),
          ),
        ],
      ),
    );
  }
}
