import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;
  const Result({super.key, required this.resultScore, required this.resetHandler});

  String get resultPhrase {
    var resultText = 'You did it';
    if (resultScore <= 8){
      resultText = 'You sre awesome and innocent';
    } else if (resultScore <= 12 ){
      resultText = 'You are .... strange?!';
    } else{
      resultText = 'You are so bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Center(
              child: Text('You did it',
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold
              ),
              textAlign: TextAlign.center, ),
            ),
            TextButton(child: Text('Restart Quiz!'),
          onPressed: resetHandler, )
      ],
    );
  }
}