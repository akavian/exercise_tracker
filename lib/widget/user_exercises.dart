import 'package:exercsie_tracker/widget/exercise_list.dart';
import 'package:flutter/material.dart';
import '../model/exercise.dart';
class UserExercises extends StatefulWidget {
  @override
  _UserExercisesState createState() => _UserExercisesState();
}

class _UserExercisesState extends State<UserExercises> {
  List<Exercise> exercises = [
    Exercise(
      dateTime: DateTime.now(),
      minute: 30,
      title: "Cardio",
    ),
    Exercise(
      dateTime: DateTime.now(),
      title: "Streching",
      minute: 40,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return ExerciseList(exercises);
  }
}