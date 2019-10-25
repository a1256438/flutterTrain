// Add a stateful widget
// 添加依赖
import 'package:flutter/material.dart';
// import 'package:english_words/english_words.dart';

void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _test="測試中";

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Welcome to Flutter',
      home: new Scaffold(
        appBar: new AppBar(
          title: const Text('Welcome to Flutter'),
        ),
        body: 
        new Center(
          
                child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                Text(
                  _test
                ),
                //Text("I've seeing things you people wouldn't believe."),
                RaisedButton(
                child: Text("浮动按钮"),
                color: Colors.red,
                textColor: Colors.white,
                splashColor: Colors.blue,  onPressed: (){
                }
                )
                ]
                )
        )
      )
    );
                }
}



class RandomWords extends StatefulWidget {
  @override
  RandomWordsState createState() => new RandomWordsState();
}

class RandomWordsState extends State<RandomWords> {
  @override
  Widget build(BuildContext context) {

     return new Text("Open Mind");
    // final WordPair wordPair = new WordPair.random();
    // return new Text(wordPair.asPascalCase);
  }
}