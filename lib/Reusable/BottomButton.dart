import 'package:flutter/material.dart';
import '../Constant/Constant.dart';

class BottomButton extends StatelessWidget {
  BottomButton({this.onTap, this.text});
  final Function onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: kBottomContainerColor,
        width: double.infinity,
        height: kBottomContainerHeight,
        padding: EdgeInsets.only(bottom: 10),
        child: Center(
          child: Text(
            text,
            style: kLargeButtonStyle,
          ),
        ),
      ),
    );
  }
}
