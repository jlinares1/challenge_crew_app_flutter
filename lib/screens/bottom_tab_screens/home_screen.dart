import 'package:challenge_crew_app_flutter/screens/bottom_tab_screens/add_challenge_screen.dart';
import 'package:challenge_crew_app_flutter/screens/bottom_tab_screens/current_challenge_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
          minimum: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage:
                          AssetImage('images/generic_user_profile_image.jpg'),
                      backgroundColor: Colors.transparent,
                      radius: 30,
                    ),
                    SizedBox(width: 15.0),
                    Text(
                      'Welcome,\n$userName',
                      style:
                          TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                    ),
                    Expanded(
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: IconButton(
                            onPressed: () =>
                                context.pushNamed(AddChallengeScreen.id),
                            icon: Icon(
                              Icons.add,
                              size: 30,
                            )),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15.0),
                const Text(
                  'Challenge Summary',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                ),
                SizedBox(height: 15.0),
                Card(
                  color: Colors.blueGrey,
                  child: InkWell(
                    onTap: () => context.pushNamed(CurrentChallengeScreen.id),
                    child: SizedBox(
                      width: 500,
                      height: 150,
                      child: Center(
                        child: Text(
                          'Under Construction',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
