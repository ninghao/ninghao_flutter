import 'dart:async';

import 'package:flutter/material.dart';

class StreamDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StreamDemo'),
        elevation: 0.0,
      ),
      body: StreamDemoHome(),
    );
  }
}

class StreamDemoHome extends StatefulWidget {
  @override
  _StreamDemoHomeState createState() => _StreamDemoHomeState();
}

class _StreamDemoHomeState extends State<StreamDemoHome> {
  StreamSubscription _streamDemoSubscription;
  
  @override
  void initState() {
    super.initState();

    print('Create a stream.');
    Stream<String> _streamDemo = Stream.fromFuture(fetchData());

    print('Start listening on a stream.');
    _streamDemoSubscription = 
      _streamDemo.listen(onData, onError: onError, onDone: onDone);

    print('Initialize completed.');
  }

  void onDone() {
    print('Done!');
  }

  void onError(error) {
    print('Error: $error');
  }

  void onData(String data) {
    print('$data');
  }

  void _pauseStream() {
    print('Pause subscription');
    _streamDemoSubscription.pause();
  }

  void _resumeStream() {
    print('Resume subscription');
    _streamDemoSubscription.resume();
  }

  void _cancelStream() {
    print('Cancel subscription');
    _streamDemoSubscription.cancel();
  }

  Future<String> fetchData() async {
    await Future.delayed(Duration(seconds: 5));
    // throw 'Something happened';
    return 'hello ~';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              child: Text('Pause'),
              onPressed: _pauseStream,
            ),
            FlatButton(
              child: Text('Resume'),
              onPressed: _resumeStream,
            ),
            FlatButton(
              child: Text('Cancel'),
              onPressed: _cancelStream,
            ),
          ],
        ),
      ),
    );
  }
}
