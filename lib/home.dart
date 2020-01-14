import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.black45,
        child: Center(
            child: Text('hey', style: TextStyle(color: Colors.white, fontStyle: FontStyle.normal),)
        )
    );
  }
}
