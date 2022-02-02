import 'package:flutter/material.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final index;
  final questionData;
  final onChangeAnswer;

  const Quiz({
    Key? key,
    this.index,
    this.questionData,
    this.onChangeAnswer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      runSpacing: 5,
      children: [
        Container(
          height: 120,
          alignment: Alignment.center,
          padding: const EdgeInsets.all(7.0),
          child: Text(
            questionData.questions[index].title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Color(0xff3700B3),
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        ...questionData.questions[index].answers
            .map((value) => Answer(
                  title: value['answer'],
                  onChangeAnswer: onChangeAnswer,
                  isCorrect: value.containsKey('isCorrect') ? true : false,
                ))
            .toList(),
      ],
    );
  }
}
