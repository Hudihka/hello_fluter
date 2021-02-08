
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hello_fluter/Bloc/UserBlock.dart';
import 'package:hello_fluter/Bloc/UserEvent.dart';
import 'package:hello_fluter/Cubit/UserCubit.dart';

class ActionButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final UserBlock userBlock = BlocProvider.of<UserBlock>(context);
    final UserCubit userCubit = context.read();
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        ElevatedButton(
          child: Text('Load'),
          onPressed: () {
            userCubit.fetchUser();
          },
          style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.red) ),
          // color: Colors.green,
        ),
        SizedBox(width: 8),
        ElevatedButton(
          child: Text('Clear'),
          onPressed: () {
            userCubit.clearUser();
          },
          style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.green) ),
        ),
      ],
    );
  }
}