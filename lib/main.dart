import 'package:flutter/material.dart';
import 'package:quiz_app_nada_ashraf_mohammad/Screens/login_screen.dart';
import 'package:quiz_app_nada_ashraf_mohammad/Screens/opening_screen.dart';
import 'package:quiz_app_nada_ashraf_mohammad/Screens/quizscreen.dart';
import 'package:quiz_app_nada_ashraf_mohammad/Screens/score_screen.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
 


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      
      home:  QuizScreen()

    );

  }
}
