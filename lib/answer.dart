import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final Map<String, Object> answer;
  // final String answer;
  const Answer({required this.selectHandler, required this.answer});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0),
      child: Container(
        width: double.infinity,
        color: Colors.blue,
        child: ElevatedButton(
          child: Text(answer['text'].toString()),
          onPressed: () {
            selectHandler();
          },
        ),
      ),
    );
  }
}
