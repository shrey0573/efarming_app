import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
         home: GridView.count(crossAxisCount: 3,
         children: <Widget>[
           Text('one'),
           Text('two')
         ],)
      )
  );
}