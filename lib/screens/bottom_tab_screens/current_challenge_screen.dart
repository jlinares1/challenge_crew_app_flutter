import 'package:flutter/material.dart';

class CurrentChallengeScreen extends StatefulWidget {
  static const String id = 'current_challenge_screen';

  const CurrentChallengeScreen({super.key});

  @override
  State<CurrentChallengeScreen> createState() => _CurrentChallengeScreenState();
}

class _CurrentChallengeScreenState extends State<CurrentChallengeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Update Challenge'),
      ),
    );
  }
}
