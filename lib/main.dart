

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hello_fluter/colo_block.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider(  ///оборачиваем дочерний класс в блок Провайдер
        create: (context) => ColorBlock(Colors.red), 
        child: MyHomePage()),
    );
  }
}

class MyHomePage extends StatelessWidget{
    @override
  Widget build(BuildContext context) {
    ColorBlock _block = BlocProvider.of<ColorBlock>(context); //модель класса для прослушки
    return Scaffold(
      appBar: AppBar(
        title: Text('BLoC with flutter_block'),
        centerTitle: true,
      ),
      body: Center(
        child: BlocBuilder<ColorBlock, Color>(
          builder: (context, currentColor) =>  //обработка ответа
          AnimatedContainer(
          height: 100,
          width: 100,
          color: currentColor,
          duration: Duration(milliseconds: 500),
        ),
        ), 
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            backgroundColor: Colors.red,
            onPressed: (){
              ///////////передача события
              _block.add(ColorEvent.event_red);
            },
          ),
          SizedBox(width: 10),
          FloatingActionButton(
            backgroundColor: Colors.green,
            onPressed: (){
              ///////////передача события
              _block.add(ColorEvent.event_green);
            },
          ),
        ],
      ),
    );
  }

} 

