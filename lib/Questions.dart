import 'package:flutter/material.dart';
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

  void nextQuestion()
  {
    if(_i<_Questions.length-1){_i++;}
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

