import 'package:flutter/material.dart';

class TestDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TestDemo'),
        elevation: 0.0,
      ),
      body: TestDemoHome(),
    );
  }
}

class TestDemoHome extends StatefulWidget {
  @override
  _TestDemoHomeState createState() => _TestDemoHomeState();
}

class _TestDemoHomeState extends State<TestDemoHome> {
  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text('hello'),
    );
  }
}

class NinghaoTestDemo {
  static greet(String name) {
    return 'hello $name ~~';
  }
}