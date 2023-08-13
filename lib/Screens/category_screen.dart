import 'package:flutter/material.dart';
import 'package:quiz_app_nada_ashraf_mohammad/Screens/quizscreen.dart';

class CategoryScreen extends StatelessWidget {
  CategoryScreen({super.key});

  List quizName = ["Sport Test", "History Test", "General Test"];
  List quizColor = [const Color.fromARGB(255, 164, 239, 167), Color.fromARGB(255, 18, 149, 219), Color.fromARGB(255, 224, 171, 247)];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          for (int i = 0; i < 3; i++)
            Expanded(

              // بتاخد اقصى مساحة ممكنة من المساحة المتاحة

              
              
              child: InkWell(
                onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) =>
                               QuizScreen(),
                        ),
                      );
                  },
                child: Container(
                  child: Center(
                    child: Text(quizName[i]),
                  ),
                  decoration: BoxDecoration(
                      color: quizColor[i],
                      border: Border.all(width: 1, color: Colors.black)),
                ),
              ),
            )
        ],
      ),
    );
  }
}