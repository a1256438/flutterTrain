// Add a stateful widget
// 添加依赖
import 'package:flutter/material.dart';
import 'ProfileOnePage.dart';
// import 'package:english_words/english_words.dart';

void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstPage(),
    );
  }
}
class FirstPage extends StatelessWidget {
  String _test="測試中";
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Welcome to Flutter',
      home: new Scaffold(
        appBar: new AppBar(
          title: const Text('模擬頁面'),
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
                child: Text("打開使用者頁面"),
                color: Colors.red,
                textColor: Colors.white,
                splashColor: Colors.blue,  onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>ProfileOnePage()));
                }
                
                )
                ]
                )
        )
      )
    );
                }
}

class BPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('我是 B 頁'),
      ),
      body: _BPage(),
    );
  }
}

class _BPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        child: Text('返回首頁'),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
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