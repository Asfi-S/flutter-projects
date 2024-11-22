import 'package:flutter/foundation.dart';

class SizeState extends ChangeNotifier {
  double _width = 10;
  double _height = 10;
  double _topright = 0;

  double get width => _width;
  double get height => _height;
  double get topright => _topright;

  void setWidth(double value) {
    _width = value;
    notifyListeners();
  }

  void setHeight(double value) {
    _height = value;
    notifyListeners();
  }

  void setTopRight(double value) {
    _topright = value;
    notifyListeners();
  }
}