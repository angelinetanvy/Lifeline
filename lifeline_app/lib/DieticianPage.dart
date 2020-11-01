import 'package:flutter/material.dart';

class DieticianPage extends StatefulWidget {
  DieticianPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _DieticianPageState createState() => _DieticianPageState();
}

class _DieticianPageState extends State<DieticianPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Focus on consultation and diet plans available, ',
            ),
            Text("social media progressing")
          ],
        ),
      ),
    );
  }
}