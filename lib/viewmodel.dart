



import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ViewModel extends ChangeNotifier {
  double _rotation = 0;
  double get rotation => _rotation;
  set rotation(double angle) {
    _rotation = angle;
    notifyListeners();
  }

  Color _color = Colors.black;
  Color get color => _color;
  set color(Color c) {
    _color = c;
    notifyListeners();
  }

  double _scale = 0;
  double get scale => _scale;
  set scale(double s) {
    _scale = s;
    notifyListeners();
  }
}