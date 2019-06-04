import 'package:flutter/material.dart';
import 'newproject.dart';
import 'openscreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quito',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Nunito',
        primaryColor: Colors.white,
        textTheme: TextTheme(
          title: TextStyle(
            color: Colors.black12,
          )
        ),
      ),
      home: MyHomePage(),
      routes: <String, WidgetBuilder>{
        'new':(context)=>NewProject()
      },
    );
  }
}