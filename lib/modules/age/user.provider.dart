import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserProvider extends ChangeNotifier {
  int _age = 0;
  int get age => _age;

  Color _color = Colors.white;
  Color get color => _color;
  setColor(Color color) async {
    this._color = color;
    notifyListeners();
  }

  increaseAge() async {
    this._age = _age + 1;
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    _prefs.setInt('age', this._age);
    notifyListeners();
  }

  decreaseAge() {
    this._age = _age - 1;
    notifyListeners();
  }
}
