import 'package:flutter/material.dart';

void main() {
  runApp(const Quizler());
}

class Quizler extends StatefulWidget {
  const Quizler({super.key});

  @override
  State<Quizler> createState() => _QuizlerState();
}

class _QuizlerState extends State<Quizler> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black87,
        appBar: AppBar(
          title: Text('Quizzler'),
          backgroundColor: Colors.black,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 3,
                child: Center(
                  child: Text(
                      'Here is the Example Question',
                    style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,),
                  ),
                ),
            ),
            Expanded(
              flex: 1,
              child: TextButton(
                child: Card(
                color: Colors.green,
                  child: Center(
                    child: Text('True'),
                  ),
            ),
                onPressed: ()
                {

                },
              ),
            ),
            Expanded(
              flex: 1,
              child: TextButton(
                child: Card(
                  color: Colors.red,
                  child: Center(
                    child: Text('false'),
                  ),
                ),
                onPressed: ()
                {

                },
              ),
            ),
            Row(
              children: [
                Icon(
                  Icons.check,
                  color: Colors.green,
                ),
                Icon(
                  Icons.close,
                  color: Colors.red,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
