import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String title;
  final isCorrect;
  final Function onChangeAnswer;

  const Answer({
    Key? key,
    required this.title,
    required this.isCorrect,
    required this.onChangeAnswer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onChangeAnswer(isCorrect),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 7.0),
        padding: const EdgeInsets.all(10.0),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.deepPurpleAccent.shade100,
          borderRadius: BorderRadius.circular(30.0),
          boxShadow: const [
            BoxShadow(
              color: Colors.deepPurple,
              blurRadius: 10.0,
              spreadRadius: 0.0,
              offset: Offset(0.0, 5.0),
            ),
          ],
        ),
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
