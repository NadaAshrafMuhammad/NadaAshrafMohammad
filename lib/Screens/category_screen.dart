import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quiz_app_nada_ashraf_mohammad/Data/quiz_app_data.dart';
import 'package:quiz_app_nada_ashraf_mohammad/Screens/quizscreen.dart';

class CategoryScreen extends StatelessWidget {
  CategoryScreen({super.key});
  
  final Map dataset={};
  List quizName = ["Sport Test", "History Test", "Geography Test","Mathematics Test","IQ Test","Arts Test"];
  List quizColor = [const Color.fromARGB(255, 164, 239, 167), Color.fromARGB(255, 18, 149, 219), Color.fromARGB(255, 224, 171, 247),Color.fromARGB(255, 77, 25, 168),Color.fromARGB(255, 230, 156, 38),Color.fromARGB(255, 3, 190, 232)];

  @override
  Widget build(BuildContext context) 
  {
    return WillPopScope(
    onWillPop: () async {
  return await showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Text("Confirm Exit"),
      content: Text("Are you sure you want to exit?"),
      actions: <Widget>[
        InkWell(
          onTap: () => Navigator.of(context).pop(false),
          child: Text("No"),
        ),
        InkWell(
          onTap: () => SystemNavigator.pop(),
          child: Text("Yes"),
        ),
      ],
    ),
  );
},


    
      child: Scaffold(
        body: Column(
          children: [
            for (int i = 0; i < 6; i++)
              Expanded(
    
                
                child: InkWell(
                  
                  onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute<void>(
                            builder: (BuildContext context) =>
                                 QuizScreen(dataset: DataBase[i],),
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
      ),
    );
  }
}