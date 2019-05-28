import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AddMembersPage extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Add Members',
          style: TextStyle(
            fontSize: 20.0
          )
        )
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Search')
            ),
            Padding (
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child:TextField(
                autocorrect: false,
                decoration: InputDecoration(
                  labelText: "Enter a group or member name",
                  contentPadding: EdgeInsets.all(10.0),
                  border: OutlineInputBorder()
                ),
              )
            ),
            Padding(
              padding: EdgeInsets.all(20.0)
            ),
            Container(
              constraints: BoxConstraints(
                maxHeight: 400.0,
                maxWidth: MediaQuery.of(context).size.width
              ),
              child: MembersTabBar(),
            )
          ],
        ),
      ),
    );
  }
}


class MembersTabBar extends StatefulWidget {
  MembersTabBarState createState() => MembersTabBarState();
}

class MembersTabBarState extends State<MembersTabBar> with SingleTickerProviderStateMixin {

  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(vsync: this, length: 2);
  }

 @override
 void dispose() {
   controller.dispose();
   super.dispose();
 }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: TabBar(
        indicator: BoxDecoration(color: Colors.amber),
        labelPadding: EdgeInsets.all(0.0),
        indicatorPadding: EdgeInsets.all(0.0),
        indicatorColor: Colors.orange,
        unselectedLabelColor: Colors.black54,
          controller: controller,
          tabs: <Widget>[
            Tab(icon: Icon(Icons.group_add)),
            Tab(icon: Icon(Icons.person_add))
          ],
        ),
      body: TabBarView(
        controller: controller,
        children: <Widget>[
          Center(child: Icon(Icons.group)),
          Center(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 14.0),
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.person),
                      Padding(padding: EdgeInsets.symmetric(horizontal:5.0)),
                      Text('Kimi no na wa')
                    ],
                  )
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 0.0),
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.person),
                      Padding(padding: EdgeInsets.symmetric(horizontal:5.0)),
                      Text('Uzumaki Naruto')
                    ],
                  )
                )
              ],
            )
          )
        ],
      ),
    );
  }
}