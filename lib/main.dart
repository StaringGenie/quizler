import 'package:flutter/material.dart';

void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: QuizPage(),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> scoreKeeper = [
    Icon(
      Icons.check,
      color: Colors.green,
    ),
    Icon(
      Icons.close,
      color: Colors.red,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: const EdgeInsets.all(13.0),
            child: Center(
              child: Text(
                'Question Text asdasdasdasdf sad asd as d a sd asd',
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: FlatButton(
              child: Text('True',
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.white,
                  )),
              color: Colors.green,
              onPressed: () {
                setState(() {
                  scoreKeeper.add(Icon(
                    Icons.check,
                    color: Colors.green,
                  ));
                });
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: FlatButton(
              child: Text('False',
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.white,
                  )),
              color: Colors.red,
              onPressed: () {
                setState(() {
                  scoreKeeper.add(Icon(
                    Icons.close,
                    color: Colors.red,
                  ));
                });
              },
            ),
          ),
        ),
        Row(
          children: scoreKeeper,
        ),
      ],
    );
  }
}
