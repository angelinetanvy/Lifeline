import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'MapPage.dart';
import 'ProgressPage.dart';

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
      backgroundColor: const Color(0xFFE9E9E9),
      // appBar: AppBar(
      //   leading: IconButton(icon: Icon(Icons.menu), onPressed:(){
      //
      //   }),
      //   title: Text(widget.title),
      //   actions:<Widget>[
      //     IconButton(icon: Icon(Icons.search), onPressed:(){
      //
      //     }),
      //   ]
      // ),
      floatingActionButton:
      Stack(
        children: [
          Positioned(
              top: 100,
              left: 75,
              child:
              RaisedButton(
                  child: Text('Emergency',style: TextStyle(color: Colors.white)),
                  color: Colors.red,
                  splashColor: Colors.lightBlue,
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(100.0),
                  onPressed: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder:(context)=>ProgressPage()),
                    );
                  }
              )
          ),
        ],
      ),
      // floatingActionButton : ListView(children: <Widget>[
      //   Container(
      //     //height: 150,
      //     margin: EdgeInsets.symmetric(vertical: 130.0),
      //     padding:EdgeInsets.symmetric(horizontal:30),
      //     child:RaisedButton(
      //       child: Text('Emergency',style: TextStyle(color: Colors.white)),
      //       color: Colors.red,
      //       splashColor: Colors.lightBlue,
      //       shape: CircleBorder(),
      //       padding: EdgeInsets.all(100.0),
      //       onPressed: (){
      //         Navigator.push(context,
      //           MaterialPageRoute(builder:(context)=>MapPage()),
      //         );
      //       },
      //     ),
      //   ),
      // ],)  ,
    );
  }
}