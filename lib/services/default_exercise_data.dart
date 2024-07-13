import 'package:challenge_crew_app_flutter/models/exercise.dart';

class DefaultExerciseData {
  List<Exercise> _exerciseData = [
    Exercise(name: 'running', type: Type.cardio, unit: unitOfMeasurement.miles),
    Exercise(
        name: 'steps', type: Type.cardio, unit: unitOfMeasurement.numOfSteps),
    Exercise(
        name: 'lifting',
        type: Type.powerlifting,
        unit: unitOfMeasurement.numOfReps),
  ];
}
