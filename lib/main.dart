import 'package:challenge_crew_app_flutter/screens/home_screen.dart';
import 'package:challenge_crew_app_flutter/screens/login_screen.dart';
import 'package:challenge_crew_app_flutter/screens/profile_creation_screen.dart';
import 'package:challenge_crew_app_flutter/screens/registration_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:challenge_crew_app_flutter/screens/app_navigation.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          textTheme: GoogleFonts.montserratTextTheme(
        Theme.of(context).textTheme,
      )),
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




// MaterialApp.router(
//       theme: ThemeData(
//           textTheme: GoogleFonts.montserratTextTheme(
//         Theme.of(context).textTheme,
//       )),
//       routerConfig: AppNavigation.router,
//     );