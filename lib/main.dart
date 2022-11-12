import 'package:flutter/material.dart';
import 'package:quiz_academind/answer.dart';
import 'package:quiz_academind/question.dart';
import 'package:quiz_academind/quiz.dart';
import 'package:quiz_academind/result.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
   MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
   MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  void _resetQuiz(){
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  //   at each map listed below is a widget
    //question is name of the building
    final _questions = [
      // Ground floor
      {'question': 'What \'s you favorite color?',
      'answer': [ 
      {'text': 'Black', "score": 10,},
      {'text': 'White', "score": 10,},
      {'text': 'Green',"score": 10,},
      {'text': 'Red', "score": 10,},
      ],
      // qusetion and answer is like different appartments, they are identifier
      },
      //first floor
      {'question': 'What\'s your favorite meal?',
      'answer': [ 
      {'text': 'Masu Maam', "score": 10,},
      {'text': 'Pizza', "score": 10,},
      {'text': 'Burger',"score": 10,},
      {'text': 'Shreya', "score": 10,},
      ]},
      //second floor
      {'question': 'What\'s your favorite animal?',
      'answer': [ 
      {'text': 'Lion', "score": 10,},
      {'text': 'Sheep', "score": 1,},
      {'text': 'Dog',"score": 4,},
      {'text': 'Cat', "score": 3,},
      ],
      },
      //3rd floor
      {'question': 'What\'s you favorite hobby?',
      'answer': [ 
      {'text': 'Workout', "score": 2,},
      {'text': 'Programming', "score": 10,},
      {'text': 'Raading',"score": 10,},
      {'text': 'Guitar', "score": 5,},
      ],
      },];
  int _questionIndex = 0;
  int _totalScore = 0;  // it is tracking which floor number
 // Created questionIndex to keep track of questions
  void  _answerQuestion(int score){ // this function will be passed on elevated buttion
    _totalScore += score;
    
    setState((){
      _questionIndex++; // so that, when user clicks the button, questionIndex will increase by 1
    });

    print(_questionIndex);
    if(_questionIndex < _questions.length){
      print('We have more questions!');
    } else {
      print("No more questions!");
    }

   
  }

  @override 
  Widget build(BuildContext context) {
    

    return Scaffold(
        body: _questionIndex < _questions.length ? 
         Quiz( answerQuestion: _answerQuestion, 
         questionIndex: _questionIndex, 
         questions:  _questions,) // we are forwording pointer in Quiz paramater i.e _questions and answerQuestion
        :
         
        Result( resultScore: _totalScore, resetHandler: _resetQuiz,),
      );
    
  }
}


