import 'package:challenge_crew_app_flutter/screens/profile_creation_screen.dart';
import 'package:flutter/material.dart';
import 'package:challenge_crew_app_flutter/screens/home_screen.dart';
import 'package:challenge_crew_app_flutter/screens/login_screen.dart';
import 'package:challenge_crew_app_flutter/screens/registration_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: LoginScreen.id,
      routes: {
        LoginScreen.id: (context) => const LoginScreen(),
        RegistrationScreen.id: (context) => const RegistrationScreen(),
        HomeScreen.id: (context) => const HomeScreen(),
        ProfileCreationScreen.id: (context) => const ProfileCreationScreen()
      },
    );
  }
}
