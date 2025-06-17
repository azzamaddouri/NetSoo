import 'package:flutter/material.dart';
import 'package:netsoo/data/model/user.dart';
import 'package:netsoo/data/service/get_all_user_service.dart';

class UserProvider extends ChangeNotifier {
  Future<List<User>> getAllUser() async {
    return await GetAllUserService().call();
  }
}
