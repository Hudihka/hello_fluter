import 'package:flutter/material.dart';

void main() {
  runApp(
    Center(child:  //говорим что текст будет по центру
      Text("Hello flutter", textDirection: TextDirection.ltr, //текст отображается с лево на право(ну собтв как и должен)
                            style: TextStyle(fontWeight: FontWeight.bold,
                                             fontSize: 50, //Font
                                             color: Color.fromARGB(255, 255, 128, 0))//Text Color
      )
    )
  ); //runApp
}  