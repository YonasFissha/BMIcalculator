import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.color, this.widget, this.gestureDetactor});
  final Color color;
  final Widget widget;
  final Function gestureDetactor;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: gestureDetactor,
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: 5.0,
          horizontal: 5.0,
        ),
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(10)),
        child: Center(child: widget),
      ),
    );
  }
}
