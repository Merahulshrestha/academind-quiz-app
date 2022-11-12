import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  //Or final Map<String, Object> answer;
  final String answer;
  const Answer({required this.selectHandler, required this.answer});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.blue,
      child: ElevatedButton(
        child: Text(answer),
        onPressed: () {
          selectHandler;
        },
      ),
    );
  }
}
