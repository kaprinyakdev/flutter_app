import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Test',
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState2();
  }
}

class MyAppState2 extends State<MyApp> {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
/*          appBar: AppBar(backgroundColor: Colors.transparent, title: Text('Bejelentkezés'),flexibleSpace: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: <Color>[
                        Colors.red,
                        Colors.blue
                      ],
                    ),
                  ),
                ),),*/
      body: Padding(
          padding: EdgeInsets.all(10),
          child: ListView(
            children: <Widget>[
              // TEXT - felhasználónév
              Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.all(20),
                child: Text(
                  'Felhasználónév',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 30,
                      ),
                ),
              ),
              Container(
                  alignment: Alignment.topRight,
                  padding: EdgeInsets.all(20),
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Felhasználónév',
                        labelStyle: TextStyle(color: Colors.white)),
                    style: TextStyle(color: Colors.white),
                  )),
              Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.all(20),
                child: Text(
                  'Jelszó',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 30),
                ),
              ),
              Container(
                  alignment: Alignment.topRight,
                  padding: EdgeInsets.all(20),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), labelText: 'Jelszó'),
                  )),
              Container(
                  alignment: Alignment.topRight,
                  padding: EdgeInsets.all(20),
                  child: ButtonTheme(
                    height: 60.0,
                    minWidth: 150.0,
                    child: RaisedButton(
                        onPressed: () {
                          print('asd');
                        },
                        child: Text('Bejelentkezés'),
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18),
                            side: BorderSide(color: Colors.black))),
                  )),
              Container(
                  alignment: Alignment.topRight,
                  padding: EdgeInsets.all(20),
                  child: ButtonTheme(
                    height: 60.0,
                    minWidth: 150.0,
                    child: RaisedButton(
                        onPressed: () {
                          print('asd');
                        },
                        child: Text('Regisztráció'),
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18),
                            side: BorderSide(color: Colors.black))),
                  )),
            ],
          )),
    );
  }
}

class MyAppState extends State<MyApp> {
  StatelessWidget second = new SecondWidget();

  var questionIndex = 0;

  void answerQuestionFunction() {
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
                onPressed: () {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => SecondWidget()));
                })
          ],
        ),
      ),
    );
  }
}

class SecondWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: Text('Second widget'),
    ));
  }
}
