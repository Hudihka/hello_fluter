
import 'package:flutter/material.dart';
import 'package:hello_fluter/widgets/ActionButtons.dart';
import 'package:hello_fluter/widgets/UserList.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('TestApplication'),
        centerTitle: true,),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ActionButtons(), 
          Expanded(child: UserList(),)
        ],
      ),
    );
  }
}