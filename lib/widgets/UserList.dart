import 'package:flutter/material.dart';

class UserList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 20,
      itemBuilder: (context, index) => Container(
        child: ListTile(
          leading: Text('ID: 1', style: TextStyle(fontWeight: FontWeight.bold),),
          title: Column(
            children: [
              Text('My name', style: TextStyle(fontWeight: FontWeight.bold),),
              Column(
                children: [
                  Text('Email: test@test.ru', style: TextStyle(fontStyle: FontStyle.italic),),
                  Text('Phone: 123456789', style: TextStyle(fontStyle: FontStyle.italic),),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}