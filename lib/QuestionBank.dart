import 'package:flutter/cupertino.dart';

class Question{
  String _question='';
  bool _answer=false;

  Question({String q='',bool a=false})
  {
    _question = q;
    _answer = a;
  }
  String getQuestion()
  {
    return _question;
  }
  bool getAnswer()
  {
    return _answer;
  }
}