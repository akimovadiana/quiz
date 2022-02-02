 class Question {
  final String title;
  final List<Map> answers;

  Question({
    required this.title,
    required this.answers
  });
}

class QuestionData {
  final _data = [
    Question(
        title: 'Which legendary surrealist artist is famous for painting melting clocks?',
        answers: [
          {'answer' : 'Joan Miro',},
          {'answer' : 'Leonora Carrington',},
          {'answer' : 'Yves Tanguy',},
          {'answer' : 'Salvador Dali', 'isCorrect': 1},//
        ]
    ),
    Question(
        title: 'What is the currency of Denmark?',
        answers: [
          {'answer' : 'Euro',},
          {'answer' : 'Krone', 'isCorrect': 1},//
          {'answer' : 'Markka',},
          {'answer' : 'Baht',},
        ]
    ),
    Question(
        title: 'How many films have Al Pacino and Robert De Niro appeared in together?',
        answers: [
          {'answer' : 'Three',},
          {'answer' : 'Four', 'isCorrect': 1},//
          {'answer' : 'Five',},
          {'answer' : 'Six',},
        ]
    ),
    Question(
        title: 'What was the old name for a Snickers bar before it changed in 1990?',
        answers: [
          {'answer' : 'Marathon', 'isCorrect': 1},//
          {'answer' : 'Squirrel',},
          {'answer' : 'Mercury',},
          {'answer' : 'Twix',},
        ]
    ),
    Question(
        title: 'Which colour pill does Neo swallow in The Matrix?',
        answers: [
          {'answer' : 'Blue',},
          {'answer' : 'Purple',},
          {'answer' : 'Green',},
          {'answer' : 'Red', 'isCorrect': 1},//
        ]
    ),
    Question(
        title: 'Street artist Banksy is originally associated with which British city?',
        answers: [
          {'answer' : 'Bristol', 'isCorrect': 1},//
          {'answer' : 'Birmingham',},
          {'answer' : 'Lancaster',},
          {'answer' : 'Bradford',},
        ]
    ),
    Question(
        title: 'What was the Turkish city of Istanbul called before 1930?',
        answers: [
          {'answer' : 'Izmir',},
          {'answer' : 'Adana',},
          {'answer' : 'Constantinople', 'isCorrect': 1},//
          {'answer' : 'Ankara',},
        ]
    ),
    Question(
        title: 'Which Stephen King novel takes place mostly in the fictional Overlook Hotel?',
        answers: [
          {'answer' : 'The Shining', 'isCorrect': 1},//
          {'answer' : 'Blind Willy',},
          {'answer' : 'Elevation',},
          {'answer' : 'Misery',},
        ]
    ),
    Question(
        title: 'How many hearts does an octopus have?',
        answers: [
          {'answer' : '7',},
          {'answer' : '2',},
          {'answer' : '3', 'isCorrect': 1},//
          {'answer' : '5',},
        ]
    ),
    Question(
        title: 'Which year did the European Union first introduce the Euro as currency?',
        answers: [
          {'answer' : '2001',},
          {'answer' : '1999', 'isCorrect': 1},//
          {'answer' : '2008',},
          {'answer' : '2004',},
        ]
    ),
  ];
  List<Question> get questions => [..._data];
}