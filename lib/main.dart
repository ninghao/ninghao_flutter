import 'package:flutter/material.dart';
import 'model/post.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      theme: ThemeData(
        primarySwatch: Colors.yellow
      )
    );
  }
}

class Home extends StatelessWidget {
  Widget _listItemBuilder(BuildContext context, int index) {
    return Text(posts[index].title);
  }

  @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('NINGHAO'),
          elevation: 0.0,
        ),
        body: ListView.builder(
          itemCount: posts.length,
          itemBuilder: _listItemBuilder,
        )
      );
    }
}

class Hello extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
      return Center(
        child: Text(
          'hello',
          textDirection: TextDirection.ltr,
          style: TextStyle(
            fontSize: 40.0,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          )
        ),
      );
    }
}
