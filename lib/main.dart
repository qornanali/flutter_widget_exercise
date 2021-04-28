import 'package:flutter/material.dart';
import 'package:flutter_widget_exercise/pages/home_widget.dart';
import 'package:flutter_widget_exercise/pages/exercise_widget.dart';

void main() {
  runApp(FlutterWidgetExerciseApp());
}

class FlutterWidgetExerciseApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: ExerciseWidget());
  }
}
