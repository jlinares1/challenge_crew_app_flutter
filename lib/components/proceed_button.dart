import 'package:challenge_crew_app_flutter/constants.dart';
import 'package:flutter/material.dart';

class ProceedButton extends StatelessWidget {
  const ProceedButton(
      {super.key,
      required this.buttonName,
      required this.paddingValue,
      required this.onPressed,
      required this.isPrimaryButton});

  final double paddingValue;
  final VoidCallback onPressed;
  final String buttonName;
  final bool isPrimaryButton;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: paddingValue),
      child: SizedBox(
        height: 50,
        width: double.infinity,
        child: TextButton(
            onPressed: onPressed,
            style:
                isPrimaryButton ? kPrimaryButtonStyle : kSecondaryButtonStyle,
            child: Text(
              buttonName,
              style: isPrimaryButton
                  ? kPrimaryButtonTextStyle
                  : kSecondaryButtonTextStyle,
            )),
      ),
    );
  }
}
