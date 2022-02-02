import 'package:flutter/material.dart';
import 'package:quiz/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz!',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: MaterialColor(
          Colors.deepPurpleAccent.shade700.value,
          {
            50: Colors.deepPurpleAccent.shade100,
            100: Colors.deepPurpleAccent.shade100,
            200: Colors.deepPurpleAccent.shade200,
            300: Colors.deepPurpleAccent.shade200,
            400: Colors.deepPurpleAccent.shade400,
            500: Colors.deepPurpleAccent.shade400,
            600: Colors.deepPurpleAccent.shade400,
            700: Colors.deepPurpleAccent.shade700,
            800: Colors.deepPurpleAccent.shade700,
            900: Colors.deepPurpleAccent.shade700,
          }
        ),
        fontFamily: 'Outfit',
        textTheme: const TextTheme(
            bodyText2: TextStyle(
          color: Colors.white,
        )),
      ),
      home: const HomePage(),
    );
  }
}
