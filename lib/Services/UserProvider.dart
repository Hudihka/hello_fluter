
import 'package:http/http.dart' as http;
import 'package:hello_fluter/Models/User.dart';
import 'dart:convert';

class UserProvider {
  // Future значит обещание, 
  // Future <>

  Future<List<User>> getUser() async {
  //final значет не будет изменен другими классами
  //await применяем при async работе
    final response = await http.get('https://jsonplaceholder.typicode.com/users');

    if (response.statusCode == 200){
      final List<dynamic> userJson = json.decode(response.body);
      return userJson.map((json) => User.fromJson(json)).toList();
    } else {
      throw Exception('---------ERROR---------');
    }

  }

    
}



// https://jsonplaceholder.typicode.com/users