import 'package:flutter/material.dart';
import 'package:quiz/models/question.dart';
import 'package:quiz/widgets/progress_bar.dart';
import 'package:quiz/widgets/quiz.dart';
import 'package:quiz/widgets/result.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  final QuestionData data = QuestionData();
  int _countResult = 0;
  int _questionIndex = 0;

  List<Icon> _icons = [];

  void _clearState() => setState(() {
        _questionIndex = 0;
        _countResult = 0;
        _icons = [];
      });

  void _onChangeAnswer(bool isCorrect) => setState(() {
        if (isCorrect) {
          _icons.add(Icon(
            Icons.check_circle_rounded,
            color: Colors.deepPurpleAccent.shade700,
          ));
          _countResult++;
        } else {
          _icons.add(Icon(
            Icons.circle_outlined,
            color: Colors.deepPurpleAccent.shade700,
          ));
        }

        _questionIndex += 1;
      });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Quiz')),
      body: Center(
        child: Column(
          children: [
            ProgressBar(
              icons: _icons,
              count: _questionIndex,
              total: data.questions.length,
            ),
            _questionIndex < data.questions.length
                ? Quiz(
                    index: _questionIndex,
                    questionData: data,
                    onChangeAnswer: _onChangeAnswer,
                  )
                : Result(
                    count: _countResult,
                    total: data.questions.length,
                    onClearState: _clearState,
                  )
          ],
        ),
      ),
    );
  }
}
