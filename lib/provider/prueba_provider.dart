import 'package:flutter/material.dart';

class PruebaProvider extends ChangeNotifier {
  int count = 0;

  // int get ccount => PreguntaProvider()._internal(count);
// impelentacion  factory
  factory PruebaProvider() => _getInstance();
  static PruebaProvider get instance => _getInstance();
  static PruebaProvider? _instance;
  PruebaProvider._internal() {
    // print('PreguntaProvider');
  }
  static PruebaProvider _getInstance() {
    if (_instance == null) {
      _instance = new PruebaProvider._internal();
    }
    return _instance!;
  }

  void increment() {
    count++;
    notifyListeners();
  }
  // bool? isElegible = true;
  // get count => isElegible;
  // void siSepuede() {
  //   isElegible = true;
  //   notifyListeners();
  // }

  // void noSepuede() {
  //   isElegible = false;
  //   notifyListeners();
  // }
}
