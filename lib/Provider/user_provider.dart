import 'package:flutter/material.dart';

class UserProvider extends ChangeNotifier {
  int age = 20;

  increment() {
    age++;
    notifyListeners();
  }
}
