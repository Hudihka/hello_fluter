

import 'package:flutter/material.dart';

abstract class UserState {}

//список пустой
class UserEmptyState extends UserState {}

//список загрузки
class UserLoadState extends UserState {}

//список узеры загружены
class UserLoadedState extends UserState {
  List<dynamic> loadedUser;
  //@required обязателен для передачи
  // assert это обяз условие без которого не начнетсы выполнение
  UserLoadedState({@required this.loadedUser}) : assert(loadedUser != null);
}

//когда произошла ошибка при загрузке
class UserErrorState extends UserState {}