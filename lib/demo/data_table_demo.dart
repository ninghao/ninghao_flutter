import 'package:flutter/material.dart';

class DataTableDemo extends StatefulWidget {
  @override
  _DataTableDemoState createState() => _DataTableDemoState();
}

class _DataTableDemoState extends State<DataTableDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DataTableDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: <Widget>[
            DataTable(
              columns: [
                DataColumn(
                  label: Text('Title'),
                ),
                DataColumn(
                  label: Text('Author'),
                ),
              ],
              rows: [
                DataRow(
                  cells: [
                    DataCell(Text('hello ~')),
                    DataCell(Text('wanghao')),
                  ]
                ),
                DataRow(
                  cells: [
                    DataCell(Text('hola ~')),
                    DataCell(Text('wanghao')),
                  ]
                ),
                DataRow(
                  cells: [
                    DataCell(Text('您好 ~')),
                    DataCell(Text('wanghao')),
                  ]
                ),
              ],
            ),
          ],
        ),
      )
    );
  }
}