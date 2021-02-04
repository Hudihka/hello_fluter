


import 'package:flutter/material.dart';

class ActionButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        RaisedButton(
          child: Text('Load'),
          onPressed: () {

          },
          color: Colors.green,
        ),
        SizedBox(width: 8),
        RaisedButton(
          child: Text('Clear'),
          onPressed: () {

          },
          color: Colors.red,
        ),
      ],
    );
  }
}