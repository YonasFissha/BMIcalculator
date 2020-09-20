import 'package:flutter/material.dart';
import '../Reusable/ReusableCard.dart';
import '../Reusable/BottomButton.dart';
import '../Constant/Constant.dart';
import 'ScreenResultArguments.dart';

class Results extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ScreeResultArguments args = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                alignment: Alignment.bottomCenter,
                child: Center(
                  child: Text(
                    'Your Result',
                    style: kNumberTextStyle,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                color: kActiveCardColor,
                gestureDetactor: () {},
                widget: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      args.result.toUpperCase(),
                      style: kLabelTextStyle.copyWith(
                        color: Colors.green,
                      ),
                    ),
                    Text(
                      args.bmi,
                      style: kNumberTextStyle,
                    ),
                    Text(
                      args.interpretation,
                      textAlign: TextAlign.center,
                      style: kLabelTextStyle,
                    ),
                  ],
                ),
              ),
            ),
            BottomButton(
              onTap: () {
                Navigator.pop(context);
              },
              text: 'RE-CALCULATE',
            ),
          ],
        ),
      ),
    );
  }
}
