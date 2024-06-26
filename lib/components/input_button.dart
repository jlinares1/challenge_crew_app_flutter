import 'package:challenge_crew_app_flutter/constants.dart';
import 'package:flutter/material.dart';

class InputButton extends StatelessWidget {
  const InputButton(
      {super.key,
      required this.inputText,
      required this.textInputCallBack,
      this.inputIcon,
      this.keyboardType});

  final void Function(String)? textInputCallBack;
  final String inputText;
  final IconData? inputIcon;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            inputText,
            style: const TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 10),
          TextField(
            decoration: kInputButtonInputDecoration.copyWith(
              hintText: 'Enter your $inputText',
              suffixIcon: Icon(
                inputIcon,
                color: Colors.blueGrey,
              ),
            ),
            onChanged: textInputCallBack,
            keyboardType: keyboardType,
            onTapOutside: (PointerDownEvent event) {
              //Dismisses keyboard once you click outside of input field
              FocusManager.instance.primaryFocus?.unfocus();
            },
          ),
        ],
      ),
    );
  }
}
