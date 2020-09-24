import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  void answerQuestionFunction(){
      print('Answer chosenn!');
  }


  @override
  Widget build(BuildContext context) {
    
    var questions = ['Age?', 'Place of birth?'];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first appp'),
        ),
        body: Column(
          children: [
            Text('question'),
            RaisedButton(
              child: Text('Answer1'),
              onPressed: () => print('test1'),
            ),
            RaisedButton(
              child: Text('Answer2'),
              onPressed: answerQuestionFunction,
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
