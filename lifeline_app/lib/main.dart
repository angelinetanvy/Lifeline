import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currIndex = 0;
  final List<Widget> _children = [
    HomePage(title: 'Home Page',),
    PharmacyPage(title: 'Pharmacy Page',),
    DieticianPage(title: 'Dietician Page'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: _children[currIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currIndex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              title: Text('Pharmacy'),
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(Icons.restaurant),
              title: Text('Dietician'),
              backgroundColor: Colors.blue)
        ],
        onTap: (index) {
          setState(() {
            currIndex = index;
          });
        },
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class PharmacyPage extends StatefulWidget {
  PharmacyPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _PharmacyPageState createState() => _PharmacyPageState();
}


class _PharmacyPageState extends State<PharmacyPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[Text('This is Pharmacy Page',),],
        ),
      ),
    );
  }
}

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
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[Text('This is Dietician Page',),],
        ),
      ),
    );
  }
}

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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[Text('This is Home Page',),],
        ),
      ),
    );
  }
}