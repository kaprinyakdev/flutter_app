import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

    @override
    State<StatefulWidget> createState(){

      return MyAppState();
    }

}

class MyAppState extends State<MyApp>{

    var questionIndex = 0;

    void answerQuestionFunction(){
      setState(() {
          questionIndex = questionIndex + 1;
      });
      print(questionIndex);
    }

    @override
    Widget build(BuildContext context) {
      
      var questions = ['Age??', 'Place of birth?'];

      return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('My first app'),
          ),
          body: Column(
            children: [
              Text(
                questions[questionIndex],
              ),
              RaisedButton(
                child: Text('Answer1'),
                onPressed: answerQuestionFunction,
              ),
              RaisedButton(
                child: Text('Answer2'),
                onPressed: () => print('második'),
              ),
              RaisedButton(
                child: Text('Answer3'),
                onPressed: answerQuestionFunction,
              )
            ],
          ),
        ),
      );
    }
  }