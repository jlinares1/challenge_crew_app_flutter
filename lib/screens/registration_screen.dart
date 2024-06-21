import 'package:challenge_crew_app_flutter/components/input_button.dart';
import 'package:challenge_crew_app_flutter/screens/profile_creation_screen.dart';
import 'package:flutter/material.dart';

class RegistrationScreen extends StatefulWidget {
  static const String id = 'registration_screen';

  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('User Account'),
        backgroundColor: Colors.blueGrey,
      ),
      body: SafeArea(
        minimum: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Text('Create an account',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.w600)),
            const SizedBox(height: 15),
            const InputButton(inputText: 'First Name', textInputCallBack: null),
            const SizedBox(height: 15),
            const InputButton(inputText: 'Last Name', textInputCallBack: null),
            const SizedBox(height: 15),
            const InputButton(
                inputText: 'Email Address', textInputCallBack: null),
            const SizedBox(height: 15),
            const InputButton(inputText: 'Password', textInputCallBack: null),
            const SizedBox(height: 15),
            const InputButton(
                inputText: 'Confirm Password', textInputCallBack: null),
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: SizedBox(
                height: 50,
                width: double.infinity,
                child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, ProfileCreationScreen.id);
                    },
                    style: const ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Colors.blueGrey)),
                    child: const Text(
                      'Next',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
