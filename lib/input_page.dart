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
  Color maleColor = reusableCardColor;
  Color femaleColor = reusableCardColor;

  void updateColor(Gender genderSelected) {
    // male==1, female==2
    if (genderSelected==Gender.male) {
      if (maleColor == reusableCardColor) {
        maleColor = reusableCardColorOnTap;
        femaleColor = reusableCardColor;
      } else {
        maleColor = reusableCardColor;
      }
    }
    if (genderSelected==Gender.female) {
      if (femaleColor == reusableCardColor) {
        femaleColor = reusableCardColorOnTap;
        maleColor = reusableCardColor;
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
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(Gender.male);
                      });
                    },
                    child: ReusableCard(
                      color: maleColor,
                      cardChild: IconContent(
                          icon: FontAwesomeIcons.mars, gender: 'MALE'),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(Gender.female);
                      });
                    },
                    child: ReusableCard(
                      color: femaleColor,
                      cardChild: IconContent(
                          icon: FontAwesomeIcons.venus, gender: 'FEMALE'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(child: ReusableCard(color: reusableCardColorOnTap)),
          Expanded(
            child: Row(
              children: [
                Expanded(child: ReusableCard(color: reusableCardColorOnTap)),
                Expanded(child: ReusableCard(color: reusableCardColorOnTap)),
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
