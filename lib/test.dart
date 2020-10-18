import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}


class MyApp extends StatefulWidget {
    
    State<StatefulWidget> createState(){
        return MyAppState();
    }


}

class MyAppState extends State<MyApp>{

      Widget build(BuildContext context){
          return MaterialApp(
            home: Scaffold(backgroundColor: Colors.amber),
          );
      }
}