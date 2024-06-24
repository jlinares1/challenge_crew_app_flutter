import 'package:challenge_crew_app_flutter/components/input_button.dart';
import 'package:challenge_crew_app_flutter/components/proceed_button.dart';
import 'package:challenge_crew_app_flutter/constants.dart';
import 'package:challenge_crew_app_flutter/screens/home_screen.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

class ProfileCreationScreen extends StatefulWidget {
  static const String id = 'profile_creation_screen';

  const ProfileCreationScreen({super.key});

  @override
  State<ProfileCreationScreen> createState() => _ProfileCreationScreenState();
}

class _ProfileCreationScreenState extends State<ProfileCreationScreen> {
  final List<String> genderItems = ['Male', 'Female', 'Other'];
  String? selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('Profile'),
        backgroundColor: Colors.blueGrey,
      ),
      body: SafeArea(
        minimum: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const CircleAvatar(
              backgroundColor: Colors.black54,
              radius: 70,
              child: CircleAvatar(
                backgroundImage:
                    AssetImage('images/generic_user_profile_image.jpg'),
                backgroundColor: Colors.transparent,
                radius: 60,
              ),
            ),
            const InputButton(inputText: 'User name', textInputCallBack: null),
            const SizedBox(height: 15),
            const InputButton(
              inputText: 'Phone number',
              textInputCallBack: null,
              keyboardType: TextInputType.phone,
            ),
            const SizedBox(height: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Gender', style: TextStyle(fontSize: 16)),
                const SizedBox(height: 10),
                DropdownButtonHideUnderline(
                  child: DropdownButtonFormField2<String>(
                    isExpanded: true,
                    decoration: kInputDropdownInputDecoration,
                    hint: const Text(
                      'Select your gender',
                      style: TextStyle(fontSize: 16),
                    ),
                    items: genderItems
                        .map((item) => DropdownMenuItem<String>(
                            value: item,
                            child: Text(
                              item,
                              style: const TextStyle(fontSize: 14),
                            )))
                        .toList(),
                    value: selectedGender,
                    onChanged: (value) {
                      setState(() {
                        selectedGender = value;
                      });
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            const InputButton(
              inputText: 'Birthday',
              textInputCallBack: null,
              keyboardType: TextInputType.datetime,
            ),
            const SizedBox(height: 15),
            const InputButton(
              inputText: 'Weight',
              textInputCallBack: null,
              keyboardType: TextInputType.number,
            ),
            ProceedButton(
              buttonName: 'Create Profile',
              paddingValue: 20,
              onPressed: () {
                Navigator.pushNamed(context, HomeScreen.id);
              },
              buttonColor: Colors.blueGrey,
            )
          ],
        ),
      ),
    );
  }
}
