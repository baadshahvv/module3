import 'package:flutter/foundation.dart';

class AuthProvider extends ChangeNotifier {
  bool _loggedIn = false;
  String _user = '';

  bool get isLoggedIn => _loggedIn;
  String get user => _user;

  void login(String username, String password) {
    if (username.isNotEmpty && password.isNotEmpty) {
      _user = username;
      _loggedIn = true;
      notifyListeners();
    }
  }

  void logout() {
    _user = '';
    _loggedIn = false;
    notifyListeners();
  }
}
