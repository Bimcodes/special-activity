import 'package:flutter/material.dart';

class DataModel extends ChangeNotifier {
  String _name = '';
  String _nickName = '';

  String get name => _name;
  String get nickName => _nickName;

  void setUserName(String name) {
    _name = name;
    notifyListeners(); // Notify listeners when the name changes
    print('UserName Updated: _name');
  }

  void setnickName(String nickName) {
    _nickName = nickName;
    notifyListeners(); // Notify listeners when the name changes
    print('UserName Updated: _nickName');
  }
}
