// import
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// 変数
const Color reusableCardColor = Color(0xFF323244);
const bottomContainerColor = Color(0xFFEB1555);
const bottomContainerHeight = 80.0;

// class(InputPage)
class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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

class IconContent extends StatelessWidget {
  // プロパティ
  final IconData icon;
  final String gender;

  // コンストラクト
  IconContent({required this.icon, required this.gender});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          gender,
          style: TextStyle(
            fontSize: 18,
            color: Color(0xFF8D8E98),
          ),
        ),
      ],
    );
  }
}

// class(ReusableCard)
class ReusableCard extends StatelessWidget {
  // プロパティ
  final Color color;
  final Widget? cardChild;

  // コンストラクタ
  ReusableCard({required this.color, this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
