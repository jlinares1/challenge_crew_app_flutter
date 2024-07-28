import 'package:flutter/material.dart';

class AddChallengeScreen extends StatefulWidget {
  static const String id = 'add_challenge_screen';
  const AddChallengeScreen({super.key});

  @override
  State<AddChallengeScreen> createState() => _AddChallengeScreenState();
}

class _AddChallengeScreenState extends State<AddChallengeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Challenge'),
      ),
    );
  }
}
