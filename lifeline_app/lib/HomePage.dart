import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lifeline_app/MapPage.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      floatingActionButton : ListView(children: <Widget>[
        Container(
          //height: 150,
          margin: EdgeInsets.symmetric(vertical: 130.0),
          padding:EdgeInsets.symmetric(horizontal:30),
          child:RaisedButton(
            child: Text('Emergency',style: TextStyle(color: Colors.white)),
            color: Colors.red,
            splashColor: Colors.lightBlue,
            shape: CircleBorder(),
            padding: EdgeInsets.all(100.0),
            onPressed: (){
              Navigator.push(context,
                MaterialPageRoute(builder:(context)=>MapPage()),
              );
            },
          ),
        ),
      ],)  ,
    );
  }
}