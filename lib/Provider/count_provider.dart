import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CountProvider extends ChangeNotifier {
  int count = 0; // App State

  void increment() {
    count++;
    notifyListeners();
  }
}
