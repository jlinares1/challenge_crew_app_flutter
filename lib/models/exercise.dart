class Exercise {
  final String name;
  final Type type;
  final unitOfMeasurement unit;

  Exercise({required this.name, required this.type, required this.unit});
}

enum Type { cardio, plyometrics, powerlifting, stretching, strength }

enum unitOfMeasurement {
  miles,
  kilometers,
  numOfReps,
  numOfSteps,
}
