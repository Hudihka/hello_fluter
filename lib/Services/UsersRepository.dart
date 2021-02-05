
import 'package:hello_fluter/Models/User.dart';
import 'package:hello_fluter/Services/UserProvider.dart';

class UsersRepository {
  UserProvider _userProvider = UserProvider();

  Future<List<User>> getAllUsers() => _userProvider.getUser();

}