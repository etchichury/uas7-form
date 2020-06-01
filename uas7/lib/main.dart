import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dias',
      home: new MyHomePage(
        title: 'Dias'
      )
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: TextStyle(fontWeight: FontWeight.w300, fontSize: 35),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.menu, color: Colors.white, size: 30,),
            onPressed: null
          )
        ],
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: ListView(
          children: [
            new DayResume(),
            new DayResume(),
            new DayResume(),
            new DayResume(),
            new DayResume(),
            new DayResume(),
            new DayResume(),
            new DayResume(),
            new DayResume(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        tooltip: 'Increment',
        child: Icon(Icons.add),
        backgroundColor: const Color(0xe0f0cfaf),
      ),
      backgroundColor: const Color(0xff444444),
    );
  }
}

class DayResume extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            '29/03',
            style: TextStyle(fontWeight: FontWeight.w300, fontSize: 30, color: Colors.white),
            textAlign: TextAlign.center,
          ),
          Divider(color: Colors.white),
          Spacer(flex: 2),
          Row(
            children: [
              Text(
                'Urticas', 
                style: TextStyle(fontWeight: FontWeight.w300, fontSize: 25, color: Colors.white),
                textAlign: TextAlign.left,
              ),
              Spacer(),
              Text(
                '0',
                style: TextStyle(fontWeight: FontWeight.w300, fontSize: 25, color: Colors.white),
                textAlign: TextAlign.right,
              ),
            ],
          ),
          Spacer(flex: 1),
          Row(
            children: [
              Text('Coceira', style: TextStyle(fontWeight: FontWeight.w300, fontSize: 25, color: Colors.white)),
              Spacer(),
              Text('0', style: TextStyle(fontWeight: FontWeight.w300, fontSize: 25, color: Colors.white)),
            ]
          )
        ],
      ),
      padding: EdgeInsets.fromLTRB(20, 10, 20, 20),
      margin: const EdgeInsets.fromLTRB(25, 12, 25, 12),
      height: 170,
      decoration: BoxDecoration(
        color: const Color(0xff2f2f2f),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            spreadRadius: 0,
            blurRadius: 10,
            offset: Offset(2, 10)
          )
        ],
      ),
    );
  }
}
