import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'pregunta_event.dart';
part 'pregunta_state.dart';

class PreguntaBloc extends Bloc<PreguntaEvent, PreguntaState> {
  PreguntaBloc() : super(PreguntaInitial()) {
    on<PreguntaEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
