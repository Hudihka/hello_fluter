import 'package:flutter/material.dart'; //основные методы

void main() {
  runApp(MaterialApp( //
      //виджет гугл дизайна есть эпл дизайна
      home: Scaffold(
    //home. значит корневой //Scaffold это что то вроде вьюКонтроллера, только уже в нем реализован таб.бар, навиг бар, бэграунд вью итд
    appBar: AppBar(
      title: Text("My first app"),
      centerTitle: true,
    ), //навигейшен бар
    body: Center(child: Text("This is my Homepage", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),)),//вью контроллер и текст
    backgroundColor: Colors.indigo,  //бэкгр колор
  )

      // Center(    //home. значит корневой
      //     child: //говорим что текст будет по центру
      //         Text("Hello flutter",
      //             textDirection: TextDirection
      //                 .ltr, //текст отображается с лево на право(ну собтв как и должен)
      //             style: TextStyle(
      //                 fontWeight: FontWeight.bold,
      //                 fontSize: 40, //Font
      //                 color: Color.fromARGB(255, 255, 128, 0)) //Text Color
      //             )
      //             )
      )); //runApp
}
