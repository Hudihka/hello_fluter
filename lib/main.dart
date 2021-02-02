import 'package:flutter/material.dart';

void main() {
  runApp(MyfirstApp());
}

class MyfirstApp extends StatelessWidget {
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
            LinearProgressIndicator(value: 23),
            Text(
              '23 %',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            Text(
              'Press button to dowload',
              style: TextStyle(color: Colors.white, fontSize: 20),
            )
          ]),
        ),
      ),
      backgroundColor: Colors.indigo,
    ));
  }
}



// class CenterContent extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//         child: Container(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//             LinearProgressIndicator(value: 23),
//             Text(
//               '23 %',
//               style: TextStyle(color: Colors.white, fontSize: 20),
//             ),
//             Text(
//               'Press button to dowload',
//               style: TextStyle(color: Colors.white, fontSize: 20),
//             )
//           ]),
//         ),
//       );
//   }
// }