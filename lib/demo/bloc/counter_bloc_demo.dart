import 'package:flutter/material.dart';

class CounterHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ActionChip(
        label: Text('0'),
        onPressed: () {},
      ),
    );
  }
}

class CounterActionButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: Icon(Icons.add),
      onPressed: () {},
    );
  }
}