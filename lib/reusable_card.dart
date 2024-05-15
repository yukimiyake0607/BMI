import 'package:flutter/material.dart';


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
