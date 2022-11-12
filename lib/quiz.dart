import 'package:flutter/material.dart';
import 'package:quiz_academind/question.dart';
import 'package:quiz_academind/answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerQuestion;
  final int questionIndex;
  const Quiz({super.key, required this.questions, required this.answerQuestion, required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return  Column(
          children: [
            //We created custom widget called question
             Question(
              questionText: questions[questionIndex]['questionText'] as  String),
             // if there was no .tostring because dart would think the value might be null but when we specified .tostring, we are telling dart that value will return string
             // we are using spread operator, we don't need list inside list
            ...(questions[questionIndex]['answer']as List<String>).map((answer){
              // we pass function inside map
              return Answer(selectHandler: () => answerQuestion, answer: answer.toString());
            }).toList(),
          ],
        );

  }
}