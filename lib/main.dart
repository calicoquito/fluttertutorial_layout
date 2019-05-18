import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return MaterialApp(
        title: 'Welcome to Flutter',
        home: MyHomePage(title: 'hola'),
      );
    }
  }

 Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
 }

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _mytitle = "placeholder";

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
  padding: const EdgeInsets.all(32),
  child: Row(
    children: [
      Expanded(
        /*1*/
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /*2*/
            Container(
              padding: const EdgeInsets.only(bottom: 8),
              child: Text(
                _mytitle,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              'Kandersteg, Switzerland',
              style: TextStyle(
                color: Colors.grey[500],
              ),
            ),
          ],
        ),
      ),
      /*3*/
      Icon(
        Icons.star,
        color: Colors.red[500],
      ),
      Text('41'),
    ],
  ),
);
   Color color = Theme.of(context).primaryColor;
  

Widget buttonSection = Container(
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      _buildButtonColumn(color, Icons.call, 'CALL'),
      _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
      _buildButtonColumn(color, Icons.share, 'SHARE'),
    ],
  ),
);
Widget textSection = Container(
  padding: const EdgeInsets.all(32),
  child: Text(
    'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
        'Alps. Situated 1,578 meters above sea level, it is one of the '
        'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
        'half-hour walk through pastures and pine forest, leads you to the '
        'lake, which warms to 20 degrees Celsius in the summer. Activities '
        'enjoyed here include rowing, and riding the summer toboggan run.',
    softWrap: true,
  ),
);  

setState(() {
      _mytitle = 'hello world';
    });
    return Scaffold(
        appBar: AppBar(
          title: Text('Hello'), // Text('Welcome to Flutter'),
        ),
        body: ListView(            
                 children: [
                   Image.network('https://api.opencaribbean.org/api/v1/media/download/33268826-479c-4c70-bd0b-ddc3aa92b1fe.jpg',
                   width: 600,
                   height: 240,
                   fit: BoxFit.cover
                   ),            
                  titleSection,
                  buttonSection,
                  textSection,            
       ],
      )
        );
  
  }


  
    // @override 
    // Widget build(BuildContext context){
    // return Scaffold(
    //     appBar: AppBar(
    //       title: Text(_mytitle), // Text('Welcome to Flutter'),
    //     ),
    //     body: ListView(            
    //              children: [
    //                Image.asset('images/lake.jpg',
    //                width: 600,
    //                height: 240,
    //                fit: BoxFit.cover
    //                ),            
    //               titleSection,
    //               buttonSection,
    //               textSection,            
    //    ],
    //   )
    //     );

    // }

}