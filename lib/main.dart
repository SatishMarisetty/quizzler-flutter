import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'Questions.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

void main() {
  runApp(const Quizler());
}

List<Widget> icons=[];
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
        backgroundColor: Colors.black54,
        appBar: AppBar(
          systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: Colors.black),
          title: Text('Quizzler'),
          backgroundColor: Colors.black,
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 5,
                  child: Center(
                    child: Text(
                        Quiz().getQuestion(),
                      style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),
                    ),
                  ),
              ),
              Expanded(
                flex: 1,
                child: TextButton(
                  child: Card(
                  color: Colors.green,
                    child: Center(
                      child: Text('True',style: TextStyle(color: Colors.white),),
                    ),
              ),
                  onPressed: ()
                  {
                    if (Quiz().getAnswer()==true)
                      {
                        icons.add(
                          Icon(Icons.check,color: Colors.green,)
                        );
                      }
                    else
                      {
                        icons.add(
                            Icon(Icons.close,color: Colors.red,)
                        );
                      }
                    setState(() {
                      Quiz().nextQuestion();
                    });
                  },
                ),
              ),
              Expanded(
                flex: 1,
                child: TextButton(
                  child: Card(
                    color: Colors.red,
                    child: Center(
                      child: Text('false',style: TextStyle(color: Colors.white,),),
                    ),
                  ),
                  onPressed: ()
                  {
                    if (Quiz().getAnswer()==true) {
                      icons.add(
                          Icon(Icons.close, color: Colors.red,)
                      );
                    }
                    else{
                      icons.add(
                          Icon(Icons.check,color: Colors.green,)
                      );
                    }
                    setState(() {
                      Quiz().nextQuestion();
                    });
                  },
                ),
              ),
              Container(
                height: 25,
                padding: EdgeInsets.only(left: 15),
                child: Row(
                  children: icons
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}