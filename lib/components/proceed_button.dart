import 'package:flutter/material.dart';

class ProceedButton extends StatelessWidget {
  const ProceedButton(
      {super.key,
      required this.buttonName,
      required this.paddingValue,
      required this.onPressed,
      required this.buttonColor});

  final double paddingValue;
  final VoidCallback onPressed;
  final String buttonName;
  final Color buttonColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: paddingValue),
      child: SizedBox(
        height: 50,
        width: double.infinity,
        child: TextButton(
            onPressed: onPressed,
            style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(buttonColor)),
            child: Text(
              buttonName,
              style: const TextStyle(color: Colors.white, fontSize: 16),
            )),
      ),
    );
  }
}
