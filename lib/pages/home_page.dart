import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:quiz/pages/second_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Quiz',
        ),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
        child: Wrap(
          alignment: WrapAlignment.center,
          runSpacing: 40,
          children: [
            SizedBox(
              width: 120,
              height: 160,
              child: FittedBox(
                fit: BoxFit.contain,
                alignment: Alignment.topCenter,
                child: Image.asset('assets/images/smiley_animated_sticker.gif'),
              ),
            ),
            const Text(
              'Welcome to Quiz!',
              style: TextStyle(
                color: Color(0xff3700B3),
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.deepPurpleAccent.shade100,
                  padding: const EdgeInsets.symmetric(
                      horizontal: 50.0, vertical: 10.0),
                  textStyle: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                  shadowColor: Colors.deepPurple,
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  )),
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => const SecondPage(),
                    ));
              },
              child: const Text(
                'START',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
