import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../Constant/Constant.dart';

class ReusableSexWidget extends StatelessWidget {
  final IconData icon;
  final String sex;
  ReusableSexWidget(this.icon, this.sex);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FaIcon(
          icon,
          size: 80,
        ),
        SizedBox(
          height: 15,
        ),
        Text(sex, style: kLabelTextStyle),
      ],
    );
  }
}
