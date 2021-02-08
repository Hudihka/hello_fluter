

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hello_fluter/Bloc/UserEvent.dart';
import 'package:hello_fluter/Bloc/UserState.dart';
import 'package:hello_fluter/Models/User.dart';
import 'package:hello_fluter/Services/UsersRepository.dart';

class UserBlock extends Bloc<UserEvent, UserState> {
  final UsersRepository usersRepository;
  UserBlock({this.usersRepository}) : assert(usersRepository != null), super(null);

  @override
  Stream<UserState> mapEventToState(UserEvent event) async* {//async* работа с потоком
    if (event is UserLoadEvent){
      //yield добавляет значение в выходной поток окружающей функции async* . Это похоже на return , но не завершает функцию.
      yield UserLoadState();

      //Для работы с асинхронными функциями как с синхронными служит await — ожидание.
      //await позволяет дождаться выполнения асинхронной функции и после обработать результат, если он есть.

      try {
        final List<User> _loadedUserList = await usersRepository.getAllUsers();
        yield UserLoadedState(loadedUser: _loadedUserList);
      } catch (_) {
        yield UserEmptyState(); //нету юзеров
      }

    } else if (event is UserClearEvent) {
        yield UserEmptyState();
    }
  }
}