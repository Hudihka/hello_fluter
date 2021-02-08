
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hello_fluter/Cubit/UserState.dart';
import 'package:hello_fluter/Models/User.dart';
import 'package:hello_fluter/Services/UsersRepository.dart';

class UserCubit extends Cubit<UserState>{
  final UsersRepository usersRepository;
  UserCubit(this.usersRepository) : super(UserEmptyState());

//   async дает вам Future
// async* дает вам Stream.
// при async* есть yield

  Future<void> fetchUser() async {
    emit(UserEmptyState());
    try {
      emit(UserLoadState());
      //await позволяет дождаться выполнения асинхронной функции 
      //и после обработать результат, если он есть.
      final List<User> _loadedUserList = await usersRepository.getAllUsers();
      emit(UserLoadedState(loadedUser: _loadedUserList));
    } catch(_) {
      emit(UserEmptyState());
    }
  }

  Future<void> clearUser() async {
    emit(UserEmptyState());
  }
}

class UserLoadingState {
}