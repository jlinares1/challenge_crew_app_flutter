import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:challenge_crew_app_flutter/app_navigation.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
          textTheme: GoogleFonts.montserratTextTheme(
        Theme.of(context).textTheme,
      )),
      routerConfig: AppNavigation.router,
    );
  }
}
