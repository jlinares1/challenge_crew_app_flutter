import 'package:challenge_crew_app_flutter/constants.dart';
import 'package:challenge_crew_app_flutter/screens/home_screen.dart';
import 'package:challenge_crew_app_flutter/screens/registration_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'login_screen';

  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Welcome!',
                style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold),
              ),
              const Text(
                'Please sign in to continue!',
                style: TextStyle(color: Colors.black45, fontSize: 24.0),
              ),
              const SizedBox(height: 50.0),
              const Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Text('Email Address'),
              ),
              const TextField(
                decoration: kInputButtonInputDecoration,
              ),
              const SizedBox(height: 30.0),
              const Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Text('Password'),
              ),
              const TextField(
                decoration: kInputButtonInputDecoration,
              ),
              const SizedBox(height: 60.0),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, HomeScreen.id);
                    },
                    style: const ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Colors.blueGrey)),
                    child: const Text(
                      'Log In',
                      style: TextStyle(color: Colors.white),
                    )),
              ),
              const SizedBox(height: 30.0),
              Center(
                  child: Column(
                children: [
                  const Text('Dont have an account?'),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: SizedBox(
                      height: 50,
                      width: double.infinity,
                      child: TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, RegistrationScreen.id);
                          },
                          style: const ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.grey),
                          ),
                          child: const Text(
                            'Register',
                            style: TextStyle(color: Colors.white),
                          )),
                    ),
                  )
                ],
              )),
            ],
          ),
        ),
      ),
    );
  }
}
