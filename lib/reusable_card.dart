import 'package:flutter/material.dart';

// class(ReusableCard)
class ReusableCard extends StatelessWidget {
  // プロパティ
  final Color color;
  final Widget? cardChild;
  final VoidCallback? onPress;

  // コンストラクタ
  ReusableCard({required this.color, this.cardChild, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
