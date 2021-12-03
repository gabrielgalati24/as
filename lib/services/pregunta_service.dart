import 'package:flutter_application_1/models/pregunta.dart';

class PreguntaService {
  Pregunta? _pregunta;

  Pregunta get pregunta => _pregunta!;

  set pregunta(Pregunta value) {
    _pregunta = value;
  }
}
