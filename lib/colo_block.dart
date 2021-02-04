
import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

enum ColorEvent {
  event_red,
  event_green
}

extension ColorEventExtention on ColorEvent {

  Color get getColor {
    switch (this){
      case ColorEvent.event_red:
        return Colors.red;
      case ColorEvent.event_green:
        return Colors.green;
    }
  }

}



class ColorBlock {

  ColorBlock() {
    _inputEventController.stream.listen(_mapEventToState );
  }

  void dispose(){//закарываем потоки
    _inputEventController.close();
    _outputStateController.close();
  }


  Color _color = ColorEvent.event_red.getColor;

  final _inputEventController = StreamController<ColorEvent>(); //стрим контроллер вх данные
  //свойство класса

  //входной параметр
  StreamSink<ColorEvent> get inputEventSink => _inputEventController.sink; //sink входной поток куда пользователь отправляет данные


  final _outputStateController = StreamController<Color>(); //стрим контроллер выходные данные, на выходе мы должны получить цвет
  Stream<Color> get outPutStateStream => _outputStateController.stream; //stream выходной поток куда пользователь отправляет данные
  
  void _mapEventToState(ColorEvent event) {
    if (event == ColorEvent.event_red){
      _color = ColorEvent.event_green.getColor;
    } if (event == ColorEvent.event_green){
      _color = ColorEvent.event_red.getColor;
    } else {
      throw Exception('ERROR');
    }
    _outputStateController.sink.add(_color);
  }

}

