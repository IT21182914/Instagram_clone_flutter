import 'package:flutter/material.dart';
import 'package:instagram_flutter/models/user.dart';
import 'package:instagram_flutter/resources/auth_methods.dart';

class UserProvider extends ChangeNotifier {
  User? user;
  final AuthMethods _authMethods = AuthMethods();

  User get getUser => user!;

  Future<void> refreshUser() async {
    User user = await _authMethods.getUserDetails();
    this.user = user;
    notifyListeners();
  }
}
