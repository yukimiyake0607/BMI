// import
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

// 変数
const Color reusableCardColorOnTap = Color(0xFF323244);
const Color reusableCardColor = Color(0xFF23263A);
const bottomContainerColor = Color(0xFFEB1555);
const bottomContainerHeight = 80.0;

// class(InputPage)
class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleColor = reusableCardColor;
  Color femaleColor = reusableCardColor;

  void updateColor(int genderNumber) {
    // male==1, female==2
    if (genderNumber == 1) {
      if (maleColor == reusableCardColor) {
        maleColor = reusableCardColorOnTap;
      } else {
        maleColor = reusableCardColor;
      }
    }
    if (genderNumber == 2) {
      if (femaleColor == reusableCardColor) {
        femaleColor = reusableCardColorOnTap;
      } else {
        femaleColor = reusableCardColor;
      }
    }
  }

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
                    color: reusableCardColor,
                    cardChild: IconContent(
                        icon: FontAwesomeIcons.mars, gender: 'MALE'),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: reusableCardColor,
                    cardChild: IconContent(
                        icon: FontAwesomeIcons.venus, gender: 'FEMALE'),
                  ),
                ),
              ],
            ),
          ),
          Expanded(child: ReusableCard(color: reusableCardColor)),
          Expanded(
            child: Row(
              children: [
                Expanded(child: ReusableCard(color: reusableCardColor)),
                Expanded(child: ReusableCard(color: reusableCardColor)),
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



