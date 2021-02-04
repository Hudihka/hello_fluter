import 'package:flutter/material.dart';
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
      home: MyHomePage(
        title: 'Flutter Demo Home Page',
        count: 2,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title, this.count}) : super(key: key);

  final String title;
  final int count;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  ColorBlock _block = ColorBlock();

  @override
  void dispose() { //метод деинит
    _block.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bloc with stream'),
      ),
      body: Center(
        child: StreamBuilder(//если мы хотим подписать контейнер на события то его нужно обернуть в StreamBuilder
            stream: _block.outPutStateStream,//вых поток с данными
            initialData: Colors.red, //входные данные
            builder: (context, snaphot) {
              return AnimatedContainer(
          height: 100,
          width: 100,
          color: snaphot.data, //получаем новый цвет
          duration: Duration(milliseconds: 500),
        );
            }
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            backgroundColor: Colors.red,
            onPressed: (){
                _block.inputEventSink.add(ColorEvent.event_red); //передача событий
            },
          ),
          SizedBox(width: 10),
          FloatingActionButton(
            backgroundColor: Colors.green,
            onPressed: (){
              _block.inputEventSink.add(ColorEvent.event_green); //передача событий
            },
          ),
        ],
      ),
    );
  }
}
