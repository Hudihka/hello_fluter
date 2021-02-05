import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hello_fluter/Bloc/UserBlock.dart';
import 'package:hello_fluter/Services/UsersRepository.dart';
import 'package:hello_fluter/widgets/ActionButtons.dart';
import 'package:hello_fluter/widgets/UserList.dart';

class HomePage extends StatelessWidget {
  final usersRepository = UsersRepository();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<UserBlock>(
      create: (context) => UserBlock(usersRepository: usersRepository),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('TestApplication'),
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ActionButtons(),
            Expanded(
              child: UserList(),
            )
          ],
        ),
      ),
    );
  }
}
