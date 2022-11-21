import 'package:flutter/material.dart';
import 'b_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('測試'),
        ),
        body: HomePage(),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var result = "no data";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center( //將按鈕設在中間
        child: ElevatedButton( //呼叫按鈕
        child: Text('next'), //按鈕中的字串
    onPressed: () { //按下按鈕時呼叫程式碼
      goToBPage(context); //被呼叫的程式碼
    },
    ),
    ),
    );

  }

  void goToBPage(BuildContext context) async { //跳頁程式碼
    var resultValue = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => BPage()), //指定跳的頁數
    );

    setState(() {
      result = resultValue;
    });
  }
}
