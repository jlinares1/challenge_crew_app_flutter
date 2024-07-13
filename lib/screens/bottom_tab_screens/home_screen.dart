import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final String userName = 'Juan Linares';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          minimum: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage:
                          AssetImage('images/generic_user_profile_image.jpg'),
                      backgroundColor: Colors.transparent,
                      radius: 50,
                    ),
                    SizedBox(width: 15.0),
                    Text(
                      'Welcome,\n$userName',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(height: 15.0),
                const Text(
                  'Challenge Summary',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                ),
                SizedBox(height: 15.0),
                GestureDetector(
                  onTap: () => null,
                  child: Card(),
                )
              ],
            ),
          )),
    );
  }
}
