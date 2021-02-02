import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


void main() {
  runApp(MyfirstApp());
}

class MyfirstApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyFirstAppState();
  }
}

class _MyFirstAppState extends State<MyfirstApp>{ //говорим для состояния какого класса этот виджет используется
  bool _loading;
  double _progressValue;

  @override
  void initState() {
    _loading = false;
    _progressValue = 0.0;
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("My first app"),
              centerTitle: true,
            ),
            body: Center(
      child: Container(
        padding: EdgeInsets.all(16), //отступы по сторонам
        child: _loading ?
        Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              LinearProgressIndicator(value: _progressValue),
              Text(
                '${(_progressValue * 100).round()}%',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ]
            )
            : Text(
                'Press button to dowload',
                style: TextStyle(color: Colors.white, fontSize: 20),
              )
      ),
    ),
            backgroundColor: Colors.indigo,
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                setState((){
                  _loading = !_loading;
                  _updateProgress();
                });
              },
              child: Icon(Icons.cloud_download),
            )
          )
        );
  }

  void _updateProgress() {

    const oneSec = const Duration(seconds: 1);
    Timer.periodic(oneSec, (Timer t) {
      setState(() {
      _progressValue += 0.2;

      if (_progressValue.toStringAsFixed(1) == '1.0') {
        _loading = false;
        t.cancel();
        _progressValue = 0.0;
        return;
      }
      });
    });
  }


}

// class CenterContent extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Container(
//         padding: EdgeInsets.all(16), //отступы по сторонам
//         child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               LinearProgressIndicator(value: 23),
//               Text(
//                 '23 %',
//                 style: TextStyle(color: Colors.white, fontSize: 20),
//               ),
//               Text(
//                 'Press button to dowload',
//                 style: TextStyle(color: Colors.white, fontSize: 20),
//               )
//             ]),
//       ),
//     );
//   }
// }
