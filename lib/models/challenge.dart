import 'package:challenge_crew_app_flutter/models/exercise.dart';

class Challenge {
  final DateTime startDate;
  final String nameOfChallenge;
  final Set<Exercise> exercise;

  Challenge(
      {required this.nameOfChallenge,
      required this.startDate,
      required this.exercise});
}
