import 'package:flutter/material.dart';

class PreguntaProvider extends ChangeNotifier {
  int count = 0;
  int respuesta = 1;

  // int get ccount => PreguntaProvider()._internal(count);
// impelentacion  factory
  factory PreguntaProvider() => _getInstance();
  static PreguntaProvider get instance => _getInstance();
  static PreguntaProvider? _instance;
  PreguntaProvider._internal() {
    // print('PreguntaProvider');
  }
  static PreguntaProvider _getInstance() {
    _instance ??= PreguntaProvider._internal();
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
