import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function(int?) selectHandler; // changed function signature
  final Map<String, Object>
      answer; // changed String answer to Map<String, Object> answer to final String answer;
  const Answer({required this.selectHandler, required this.answer});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0), // added padding
      child: Container(
        width: double.infinity,
        color: Colors.blue,
        child: ElevatedButton(
          child: Text(answer['text'].toString()), // answer
          onPressed: () =>
              selectHandler(int.tryParse(answer['score'].toString())), // this function sends score to selectHandler of quize.dart file
        ),
      ),
    );
  }
}
