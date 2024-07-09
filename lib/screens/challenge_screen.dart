import 'package:flutter/material.dart';

class ChallengeScreen extends StatefulWidget {
  static const String id = 'challenge_screen';
  const ChallengeScreen({super.key});

  @override
  State<ChallengeScreen> createState() => _ChallengeScreenState();
}

class _ChallengeScreenState extends State<ChallengeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: Center(child: Text('Challenge Screen'))),
    );
  }
}
