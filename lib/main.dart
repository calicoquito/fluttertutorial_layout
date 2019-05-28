import 'package:flutter/material.dart';
import 'package:quito/newproject.dart';
import 'openscreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quito',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: MyHomePage(),
      routes: <String, WidgetBuilder>{
        'new':(context)=>NewProject()
      },
    );
  }
}