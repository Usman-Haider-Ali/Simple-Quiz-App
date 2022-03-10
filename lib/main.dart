import 'package:first_practice_app/widgets/button_widget.dart';
import 'package:first_practice_app/widgets/question_widget.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  final _questionList = [
    {
      'questionText': 'What is your favrite color?',
      'answers': ['Black ', 'Red', 'White', 'Green'],
    },
    {
      'questionText': 'What is your favorite animal?',
      'answers': ['Camel', 'Lion', 'Tiger'],
    },
    {
      'questionText': 'What is your favorite sport?',
      'answers': ['Cricket ', 'Football', 'Hockey', 'Tenis'],
    },
  ];

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('First Practice App'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: (_questionIndex < _questionList.length)
                ? Column(
                    children: [
                      QuestionWidget(
                        _questionList[_questionIndex]['questionText'],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ...(_questionList[_questionIndex]['answers']
                              as List<String>)
                          .map((answers) {
                        return AnswerButton(_answerQuestion, answers);
                      }),
                    ],
                  )
                : const Center(
                    child: Text(
                      'You did it',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
          ),
        ),
      ),
    );
  }
}
