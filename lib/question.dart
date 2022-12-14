// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText; // we names a property questionText
  const Question({
    Key? key, 
    required this.questionText, // made property required in constructor
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      width: double.infinity,
      child: Text(questionText,
      style: const TextStyle(fontSize: 28),
      textAlign: (TextAlign.center),
      ),
    ); // Displays text, depending on questionIndex
  }
}
