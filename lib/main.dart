import 'package:flutter/material.dart';

//Inflate the given widget and attach it to the screen
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      //To remove the debug poster
      debugShowCheckedModeBanner: false,
      // This is the theme of your application.
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Home Page'),
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
  int _counter = 0;

  void _incrementCounter() {
    //on clicked state
    setState(() {
      //incrementing the value
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      //Indiactes the overall views in the screen
      body: Center(
        //For setting the vertical alignment of views
        child: Column(
          //set the alignment full view from center
          mainAxisAlignment: MainAxisAlignment.center,
          //It conatins the views
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      //setting the floating button
      floatingActionButton: FloatingActionButton(
        //on clicked
        onPressed: _incrementCounter,
        //adding the icons
        child: Icon(Icons.add),
      ),
    );
  }
}
