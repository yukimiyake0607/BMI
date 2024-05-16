import 'package:flutter/material.dart';
import 'constants.dart';

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
          style: kGenderTestStyle,
        ),
      ],
    );
  }
}
