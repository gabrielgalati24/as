import 'package:flutter/material.dart';

class PreguntaProvider extends ChangeNotifier {
  bool? isElegible = true;
  get count => isElegible;
  void siSepuede() {
    isElegible = true;
    notifyListeners();
  }

  void noSepuede() {
    isElegible = false;
    notifyListeners();
  }
}
