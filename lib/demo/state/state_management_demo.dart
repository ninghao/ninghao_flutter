import 'package:flutter/material.dart';

class StateManagementDemo extends StatelessWidget {
  int count = 0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StateManagementDemo'),
        elevation: 0.0,
      ),
      body: Center(
        child: Chip(
          label: Text('$count'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          count += 1;
          print(count);
        },
      ),
    );
  }
}