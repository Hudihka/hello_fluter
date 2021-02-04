
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum ColorEvent {
  event_red,
  event_green
}

class ColorBlock extends Bloc<ColorEvent, Color> { //второе, это с каким состоянием мы хотим получить
ColorBlock(Color initialState) : super(initialState);
  Color _color = Colors.red;

  @override
  Stream<Color> mapEventToState(ColorEvent event) async* {//async* означает что мы работаем с потоками
    _color = (event == ColorEvent.event_red) ? Colors.red : Colors.green;
    yield _color; //yield это значение что возвращаем из потока
  } 

}
