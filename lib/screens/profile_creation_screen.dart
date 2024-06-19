import 'package:flutter/material.dart';

class ProfileCreationScreen extends StatefulWidget {
  static const String id = 'profile_creation_screen';

  const ProfileCreationScreen({super.key});

  @override
  State<ProfileCreationScreen> createState() => _ProfileCreationScreenState();
}

class _ProfileCreationScreenState extends State<ProfileCreationScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Text('Profile Creation Screen'),
      ),
    );
  }
}
