import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const Quizler());
}
int i=0;
List<Widget> icons=[];
List Questions=[
  'Sriram is a Gay',
  'Harshitha had crush on Satish',
  'Chand is Bad Boy',
  'Dhaneshwar likes eating shit',
  'Pawan Kalyan is God being',
  'Prabhas is catagorized as Male',
];
List Answers=[
  true,
  true,
  false,
  true,
  true,
  false
];

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
        backgroundColor: Colors.blueGrey,
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
                flex: 4,
                  child: Center(
                    child: Text(
                        Questions[i],
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
                      child: Text('True'),
                    ),
              ),
                  onPressed: ()
                  {
                    if (Answers[i]==true)
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
                      i++;
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
                      child: Text('false'),
                    ),
                  ),
                  onPressed: ()
                  {
                    if (Answers[i]==true)
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
                      i++;
                    });
                  },
                ),
              ),
              Container(
                height: 25,
                padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
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
