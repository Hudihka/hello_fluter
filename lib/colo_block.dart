
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

// class ColorBlock extends Block {

//   ColorBlock() {
//     _inputEventController.stream.listen(_mapEventToState );
//   }

//   void dispose(){//закарываем потоки
//     _inputEventController.close();
//     _outputStateController.close();
//   }


//   Color _color = Colors.red;

//   final _inputEventController = StreamController<ColorEvent>(); //стрим контроллер вх данные
//   //свойство класса

//   //входной параметр
//   StreamSink<ColorEvent> get inputEventSink => _inputEventController.sink; //sink входной поток куда пользователь отправляет данные


//   final _outputStateController = StreamController<Color>(); //стрим контроллер выходные данные, на выходе мы должны получить цвет
//   Stream<Color> get outPutStateStream => _outputStateController.stream; //stream выходной поток куда пользователь отправляет данные
  
//   void _mapEventToState(ColorEvent event) {
//     if (event == ColorEvent.event_red){
//       _color = Colors.green;
//     } else if (event == ColorEvent.event_green){
//       _color = Colors.red;
//     } else {
//       print(event);
//       throw Exception('ERROR____________');
//     }

//     // print(event);

//     // _color = Colors.green;
//     _outputStateController.sink.add(_color);
//   }

// }


