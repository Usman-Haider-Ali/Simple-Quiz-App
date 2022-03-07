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
  var questionIndex = 0;

  var questionList = [
    "What is your favrite color?",
    "What is your favorite animal?",
    "What is your favorite sport?"
  ];

  void answerQuestion() {
    setState(() {
      questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("First Practice App"),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text(
                  questionList[questionIndex],
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                ElevatedButton(
                  onPressed: answerQuestion,
                  child: const Text("Answer One"),
                ),
                ElevatedButton(
                  onPressed: answerQuestion,
                  child: const Text("Answer Two"),
                ),
                ElevatedButton(
                  onPressed: answerQuestion,
                  child: const Text("Answer Three"),
                ),
                ElevatedButton(
                  onPressed: answerQuestion,
                  child: const Text("Answer Four"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}