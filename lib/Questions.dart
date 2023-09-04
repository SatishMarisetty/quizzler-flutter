import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizler/main.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'QuestionBank.dart';
class Quiz{
  static int _i=0;
  List<Question> _Questions = [
    Question(q: 'Sriram is a Gay',a: true),
    Question(q: 'Harshitha had crush on Satish',a: true),
    Question(q: 'Chand is Bad Boy',a: false),
    Question(q: 'Dhaneshwar likes eating Children',a: true),
    Question(q: 'Pawan Kalyan is God being',a: true),
    Question(q: 'Prabhas is catagorized as Male',a: false),
  ];

  void nextQuestion(BuildContext context)
  {
    if(_i<_Questions.length-1){_i++;}
    else{
      Alert(
        context: context,
        title: "Quiz Completed!",
        buttons: [
          DialogButton(
            child: Text(
              "Retake",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            onPressed: () {
              icons=[];
              _i=0;
              Navigator.pop(context);
            },
            width: 120,
          )
        ],
      ).show();
    }
  }
  String getQuestion()
  {
    return _Questions[_i].getQuestion();
  }
  bool getAnswer()
  {
    return _Questions[_i].getAnswer();
  }
}

