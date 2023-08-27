import 'package:flutter/material.dart';

List<Map<String,dynamic>> DataBase = [
{
"categoryName": "Sports test",
"color": Colors.blue,
"data": [
  {
    "question" : "how many players in football team",
    "answers" : [
      {"ans": "9", "score" : 0},
      {"ans": "10", "score" : 0},
      {"ans": "11", "score" : 1},
      {"ans": "12", "score" : 0}


    ]
  },
   {
    "question" : "Which country has won the most FIFA World Cup titles?",
    "answers" : [
      {"ans": "Argentina", "score" : 0},
      {"ans": "Germany", "score" : 0},
      {"ans": "Brazil", "score" : 1},
      {"ans": "Italy", "score" : 0}
    ]
  },
   {
    "question" : "In which sport is the term 'ace' commonly used?",
    "answers" : [
      {"ans": "Tennis", "score" : 1},
      {"ans": "Basketball", "score" : 0},
      {"ans": "Baseball", "score" : 0},
      {"ans": "Golf", "score" : 0}
    ]
  },
  {
    "question" : "Which team has won the most Super Bowl titles in NFL history?",
    "answers" : [
      {"ans": "Green Bay Packers", "score" : 0},
      {"ans": "New England Patriots", "score" : 0},
      {"ans": "San Francisco 49ers", "score" : 0},
      {"ans": "Pittsburgh Steelers", "score" : 1}
    ]
  },
  {
    "question" : "What is the diameter of a basketball hoop in inches?",
    "answers" : [
      {"ans": "15", "score" : 0},
      {"ans": "16", "score" : 0},
      {"ans": "17", "score" : 0},
      {"ans": "18", "score" : 1}
    ]
  }
]

},
{
"categoryName": "history test",
"color": Colors.green,
"data": [
  {
    "question" : "Which empire lasted the longest in history?",
    "answers" : [
      {"ans": "Mongol Empire", "score" : 0},
      {"ans": "Roman Empire", "score" : 0},
      {"ans": "Ottoman Empire", "score" : 0},
      {"ans": "Byzantine Empire", "score" : 1}
    ]
  },
    {
    "question" : "Who was the first President of the United States?",
    "answers" : [
      {"ans": "Thomas Jefferson", "score" : 0},
      {"ans": "George Washington", "score" : 1},
      {"ans": "John Adams", "score" : 0},
      {"ans": "Benjamin Franklin", "score" : 0}
    ]
  },
    {
    "question" : "Which battle marked the end of the Napoleonic Wars?",
    "answers" : [
      {"ans": "Battle of Waterloo", "score" : 1},
      {"ans": "Battle of Austerlitz", "score" : 0},
      {"ans": "Battle of Trafalgar", "score" : 0},
      {"ans": "Battle of Leipzig", "score" : 0}
    ]
  },

]

},
{
"categoryName": "Geography test",
"color": Colors.red,
"data": [
   {
    "question" : "What is the longest river in the world?",
    "answers" : [
      {"ans": "Nile", "score" : 1},
      {"ans": "Amazon", "score" : 0},
      {"ans": "Yangtze", "score" : 0},
      {"ans": "Mississippi", "score" : 0}
   ]
  },
   {
    "question" : "Which is the largest desert in the world?",
    "answers" : [
      {"ans": "Sahara Desert", "score" : 1},
      {"ans": "Arabian Desert", "score" : 0},
      {"ans": "Gobi Desert", "score" : 0},
      {"ans": "Kalahari Desert", "score" : 0}
   ]
  },
   {
    "question" : "What is the capital of France?",
    "answers" : [
      {"ans": "Madrid", "score" : 0},
      {"ans": "London", "score" : 0},
      {"ans": "Paris", "score" : 1},
      {"ans": "Rome", "score" : 0}
   ]
  },
]

},
{
"categoryName": "Mathematics test",
"color": Color.fromARGB(255, 77, 25, 168),
"data": [
  {"question" : "What is the square root of 144?",
  "answers" : [
       {"ans": "10", "score" : 0},
       {"ans": "11", "score" : 0},
       {"ans": "12", "score" : 1},
       
       
       

]
  }
],
},
{
"categoryName": "IQ test",
"color": Color.fromARGB(255, 230, 156, 38),
"data": [
{
    "question" : "what is the sum of angles in a triangle?",
    "answers" : [
      {"ans": "90 degrees", "score" : 0},
      {"ans": "180 degrees", "score" : 1},
      {"ans": "270 degrees", "score" : 0},
      {"ans": "360 degrees", "score" : 0}
    ]
  },
  {
    "question" : "what is the value of pi?",
    "answers" : [
      {"ans": "2.14", "score" : 0},
      {"ans": "3.14", "score" : 1},
      {"ans": "4.14", "score" : 0},
      {"ans": "5.14", "score" : 0}
    ]
  },
],
},
{
"categoryName": "Arts test",
"color": Color.fromARGB(255, 3, 190, 232),
"data": [
  {
    "question" : "Who painted the Mona Lisa?",
    "answers" : [
      {"ans": "Pablo Picasso", "score" : 0},
      {"ans": "Leonardo da Vinci", "score" : 1},
      {"ans": "Vincent van Gogh", "score" : 0},
      {"ans": "Claude Monet", "score" : 0}
    ]
  },
  {
    "question" : "Which art movement is known for its focus on geometric shapes and bold colors?",
    "answers" : [
      {"ans": "Impressionism", "score" : 0},
      {"ans": "Cubism", "score" : 1},
      {"ans": "Surrealism", "score" : 0},
     
    ]
  },
],
},
];


TextEditingController Name = TextEditingController();

