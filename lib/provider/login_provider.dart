import 'package:flutter/material.dart';
import 'package:netsoo/data/response/login_response.dart';
import 'package:netsoo/data/service/login_service.dart';

class LoginProvider extends ChangeNotifier {
  var username = '';
  var password = '';

  Future<LoginResponse> login() async {
    return LoginService(username, password).call();
  }
}
